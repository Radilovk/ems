// XR_APILAYER_XEMS_haptic_bridge — implicit OpenXR API layer for Quest 3 standalone.
// Hooks xrApplyHapticFeedback / xrStopHapticFeedback, forwards to the runtime unchanged and mirrors the
// call to the XEMS tablet as one non-blocking UDP datagram (wire format: xems_wire.h).
// Game thread cost per haptic call: one vDSO clock read + one MSG_DONTWAIT sendto. No locks, no heap
// (except the first call per action with XR_NULL_PATH, which resolves and caches its hand).
// All safety logic lives on the tablet; this layer only reports what the game asked for.

#include "xems_wire.h"

#include <openxr/openxr.h>
#include <openxr/openxr_loader_negotiation.h>

#include <arpa/inet.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/ip.h>
#include <poll.h>
#include <sys/eventfd.h>
#include <sys/socket.h>
#include <time.h>
#include <unistd.h>

#include <algorithm>
#include <atomic>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <random>
#include <thread>
#include <unordered_map>

#if defined(__ANDROID__)
#include <android/log.h>
#include <sys/system_properties.h>
#define XLOG(...) __android_log_print(ANDROID_LOG_INFO, "XemsVrLayer", __VA_ARGS__)
#else
#define XLOG(...) ((void)0)
#endif

namespace {

using namespace xems;

constexpr const char* kLayerName       = "XR_APILAYER_XEMS_haptic_bridge";
constexpr int64_t     kHelloUnpairedNs = 500'000'000;
constexpr int64_t     kHelloPairedNs   = 2'000'000'000;
constexpr int64_t     kAckTimeoutNs    = 6'000'000'000;
constexpr int         kDscpEf          = 0xB8;  // EF -> WMM AC_VO on the AP

// ---------------------------------------------------------------- dispatch

struct Next {
    PFN_xrGetInstanceProcAddr               getInstanceProcAddr = nullptr;
    PFN_xrDestroyInstance                   destroyInstance     = nullptr;
    PFN_xrApplyHapticFeedback               applyHaptic         = nullptr;
    PFN_xrStopHapticFeedback                stopHaptic          = nullptr;
    PFN_xrPollEvent                         pollEvent           = nullptr;
    PFN_xrDestroyAction                     destroyAction       = nullptr;
    PFN_xrStringToPath                      stringToPath        = nullptr;
    PFN_xrPathToString                      pathToString        = nullptr;
    PFN_xrEnumerateBoundSourcesForAction    enumBoundSources    = nullptr;
};

Next       g_next;
XrInstance g_instance  = XR_NULL_HANDLE;
XrPath     g_leftPath  = XR_NULL_PATH;
XrPath     g_rightPath = XR_NULL_PATH;

// ---------------------------------------------------------------- transport

inline uint64_t nowNs() {
    timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return uint64_t(ts.tv_sec) * 1'000'000'000ull + uint64_t(ts.tv_nsec);
}

inline uint64_t packAddr(uint32_t ipBe, uint16_t portBe) { return (uint64_t(ipBe) << 16) | portBe; }

struct Link {
    int                   fd       = -1;
    int                   wakeFd   = -1;
    uint32_t              session  = 0;
    uint64_t              fixed    = 0;   // tablet hint (property / baked): HELLO goes there too while unpaired
    std::atomic<uint64_t> target{0};      // 0 = unpaired -> HAPTIC/STOP are dropped
    std::atomic<uint32_t> seq{0};
    std::atomic<bool>     focused{false};
    std::thread           control;
    char                  app[sizeof(wire::Hello::name)] = {};
    uint8_t               appLen = 0;
} g_link;

inline void fillHeader(wire::Header& h, uint8_t type, uint64_t t) {
    h.magic    = wire::kMagic;
    h.version  = wire::kVersion;
    h.type     = type;
    h.reserved = 0;
    h.session  = g_link.session;
    h.seq      = g_link.seq.fetch_add(1, std::memory_order_relaxed);
    h.tNs      = t;
}

inline void sendTo(const void* p, size_t n, uint64_t addr) {
    sockaddr_in a{};
    a.sin_family      = AF_INET;
    a.sin_addr.s_addr = uint32_t(addr >> 16);
    a.sin_port        = uint16_t(addr & 0xFFFF);
    ::sendto(g_link.fd, p, n, MSG_DONTWAIT | MSG_NOSIGNAL, reinterpret_cast<const sockaddr*>(&a), sizeof a);
}

inline void sendPaired(const void* p, size_t n) {
    const uint64_t t = g_link.target.load(std::memory_order_acquire);
    if (t != 0 && g_link.fd >= 0) sendTo(p, n, t);
}

void sendStop(uint8_t hand, uint8_t reason) {
    wire::Stop s{};
    fillHeader(s.h, wire::T_STOP, nowNs());
    s.hand   = hand;
    s.reason = reason;
    sendPaired(&s, sizeof s);
}

void readAppName() {
    int f = ::open("/proc/self/cmdline", O_RDONLY | O_CLOEXEC);
    if (f < 0) return;
    ssize_t n = ::read(f, g_link.app, sizeof g_link.app);
    ::close(f);
    if (n <= 0) return;
    g_link.appLen = uint8_t(strnlen(g_link.app, size_t(n)));
}

uint64_t parseTarget(char* v) {
    char* colon = strchr(v, ':');
    unsigned long port = wire::kPort;
    if (colon) { *colon = 0; port = strtoul(colon + 1, nullptr, 10); }
    in_addr ip{};
    if (inet_pton(AF_INET, v, &ip) != 1 || port == 0 || port > 0xFFFF) return 0;
    return packAddr(ip.s_addr, htons(uint16_t(port)));
}

// Baked tablet "ip[:port]": xems_vr_patch.py --tablet writes it after the marker inside this .so (in the game's
// APK), so it survives headset reboots. Volatile: the compiler must not fold the empty slot into a constant.
constexpr size_t kBakedMarkerLen = 20;
__attribute__((used)) volatile char g_bakedTarget[64] = "XEMS_VR_TARGET_SLOT=";

// Fixed tablet "ip[:port]", skips broadcast discovery. Order: property (until reboot) → baked slot.
// Quest: adb shell setprop debug.xems.vr.target 192.168.1.50   Host tests: XEMS_VR_TARGET=127.0.0.1:47800
uint64_t readFixedTarget() {
    char v[92] = {};
#if defined(__ANDROID__)
    if (__system_property_get("debug.xems.vr.target", v) > 0) return parseTarget(v);
#else
    if (const char* e = getenv("XEMS_VR_TARGET")) {
        strncpy(v, e, sizeof v - 1);
        return parseTarget(v);
    }
#endif
    for (size_t i = 0; kBakedMarkerLen + i < sizeof g_bakedTarget - 1; ++i) v[i] = g_bakedTarget[kBakedMarkerLen + i];
    return v[0] ? parseTarget(v) : 0;
}

void sendHello(uint64_t addr) {
    wire::Hello h{};
    fillHeader(h.h, wire::T_HELLO, nowNs());
    h.caps    = wire::CAP_PCM | wire::CAP_ENVELOPE;
    h.nameLen = g_link.appLen;
    memcpy(h.name, g_link.app, g_link.appLen);
    sendTo(&h, sizeof h, addr);
}

// Discovery + heartbeat + clock-sync responder. Never touches the game thread.
void controlLoop() {
    const uint64_t broadcast = packAddr(htonl(INADDR_BROADCAST), htons(wire::kPort));
    uint64_t lastAck = 0, nextHello = 0, nextNote = nowNs() + 10'000'000'000ull;
    alignas(8) uint8_t buf[256];

    for (;;) {
        uint64_t now = nowNs();
        const uint64_t paired = g_link.target.load(std::memory_order_relaxed);
        if (paired && now - lastAck > uint64_t(kAckTimeoutNs)) {
            g_link.target.store(0, std::memory_order_release);
            XLOG("tablet lost, rediscovering");
        }
        if (now >= nextNote) {         // a fresh line for `logcat -d` however long the game has been running
            nextNote = now + 10'000'000'000ull;
            if (paired) XLOG("linked to the tablet");
            else XLOG("still looking for the tablet");
        }
        if (now >= nextHello) {
            const uint64_t t = g_link.target.load(std::memory_order_relaxed);
            // Unpaired: the baked / property tablet is only a hint — broadcast too, so a wrong or changed IP
            // (another hotspot, DHCP) still finds the tablet.
            if (!t && g_link.fixed) sendHello(g_link.fixed);
            sendHello(t ? t : broadcast);
            nextHello = now + uint64_t(t ? kHelloPairedNs : kHelloUnpairedNs);
        }

        pollfd fds[2] = {{g_link.fd, POLLIN, 0}, {g_link.wakeFd, POLLIN, 0}};
        const int timeoutMs = int((nextHello - std::min(nextHello, nowNs())) / 1'000'000) + 1;
        if (::poll(fds, 2, timeoutMs) < 0) continue;
        if (fds[1].revents) return;
        if (!(fds[0].revents & POLLIN)) continue;

        for (;;) {
            sockaddr_in src{};
            socklen_t   sl = sizeof src;
            const ssize_t n = ::recvfrom(g_link.fd, buf, sizeof buf, MSG_DONTWAIT,
                                         reinterpret_cast<sockaddr*>(&src), &sl);
            if (n < 0) break;
            const uint64_t tRecv = nowNs();
            if (size_t(n) < sizeof(wire::Header)) continue;
            wire::Header h;
            memcpy(&h, buf, sizeof h);
            if (h.magic != wire::kMagic || h.version != wire::kVersion) continue;
            const uint64_t from = packAddr(src.sin_addr.s_addr, src.sin_port);

            if (h.type == wire::T_ACK) {
                lastAck = tRecv;
                if (g_link.target.exchange(from, std::memory_order_acq_rel) != from)
                    XLOG("paired with %s:%u", inet_ntoa(src.sin_addr), ntohs(src.sin_port));
            } else if (h.type == wire::T_PING && from == g_link.target.load(std::memory_order_relaxed)) {
                wire::Pong p{};
                p.t0 = h.tNs;
                p.t1 = tRecv;
                fillHeader(p.h, wire::T_PONG, nowNs());
                sendTo(&p, sizeof p, from);
            }
        }
    }
}

bool linkStart() {
    g_link.fd = ::socket(AF_INET, SOCK_DGRAM | SOCK_NONBLOCK | SOCK_CLOEXEC, IPPROTO_UDP);
    if (g_link.fd < 0) { XLOG("socket failed (INTERNET permission?)"); return false; }
    const int one = 1, tos = kDscpEf, prio = 6;
    setsockopt(g_link.fd, SOL_SOCKET, SO_BROADCAST, &one, sizeof one);
    setsockopt(g_link.fd, IPPROTO_IP, IP_TOS, &tos, sizeof tos);
    setsockopt(g_link.fd, SOL_SOCKET, SO_PRIORITY, &prio, sizeof prio);
    sockaddr_in any{};
    any.sin_family = AF_INET;
    ::bind(g_link.fd, reinterpret_cast<sockaddr*>(&any), sizeof any);

    g_link.wakeFd = ::eventfd(0, EFD_CLOEXEC | EFD_NONBLOCK);
    std::random_device rd;
    g_link.session = rd() ^ uint32_t(nowNs());
    if (g_link.session == 0) g_link.session = 1;
    g_link.seq.store(0);
    readAppName();
    g_link.fixed = readFixedTarget();
    g_link.target.store(0);            // pair on the first ACK, from the hint or from the broadcast
    XLOG("looking for the tablet%s", g_link.fixed ? " (hint + broadcast)" : " (broadcast)");
    g_link.control = std::thread(controlLoop);
    return true;
}

void linkStop() {
    if (g_link.fd < 0) return;
    sendStop(wire::HAND_BOTH, wire::SR_SHUTDOWN);
    const uint64_t one = 1;
    (void)!::write(g_link.wakeFd, &one, sizeof one);
    if (g_link.control.joinable()) g_link.control.join();
    ::close(g_link.wakeFd);
    ::close(g_link.fd);
    g_link.fd = g_link.wakeFd = -1;
    g_link.target.store(0);
}

// ---------------------------------------------------------------- hand resolution

std::mutex                           g_handMu;
std::unordered_map<XrAction, uint8_t> g_handCache;  // only for haptics sent with XR_NULL_PATH

uint8_t handOfPath(XrPath p) {
    char s[XR_MAX_PATH_LENGTH];
    uint32_t len = 0;
    if (XR_FAILED(g_next.pathToString(g_instance, p, sizeof s, &len, s))) return wire::HAND_UNKNOWN;
    if (!strncmp(s, "/user/hand/left", 15))  return wire::HAND_LEFT;
    if (!strncmp(s, "/user/hand/right", 16)) return wire::HAND_RIGHT;
    return wire::HAND_UNKNOWN;
}

uint8_t resolveHand(XrSession session, const XrHapticActionInfo* info) {
    if (info->subactionPath != XR_NULL_PATH) {
        if (info->subactionPath == g_leftPath)  return wire::HAND_LEFT;
        if (info->subactionPath == g_rightPath) return wire::HAND_RIGHT;
        return handOfPath(info->subactionPath);
    }
    {
        std::lock_guard<std::mutex> lk(g_handMu);
        auto it = g_handCache.find(info->action);
        if (it != g_handCache.end()) return it->second;
    }
    XrBoundSourcesForActionEnumerateInfo ei{};
    ei.type   = XR_TYPE_BOUND_SOURCES_FOR_ACTION_ENUMERATE_INFO;
    ei.action = info->action;
    XrPath   src[8];
    uint32_t n = 0;
    if (XR_FAILED(g_next.enumBoundSources(session, &ei, 8, &n, src)) || n == 0) return wire::HAND_BOTH;
    uint8_t hand = 0;
    for (uint32_t i = 0; i < n; ++i) hand |= handOfPath(src[i]);
    if (hand == 0) hand = wire::HAND_UNKNOWN;
    std::lock_guard<std::mutex> lk(g_handMu);
    g_handCache[info->action] = hand;
    return hand;
}

void clearHandCache() {
    std::lock_guard<std::mutex> lk(g_handMu);
    g_handCache.clear();
}

// ---------------------------------------------------------------- haptic decoding

inline float clamp01(float a) { return a > 0.f ? (a < 1.f ? a : 1.f) : 0.f; }  // NaN -> 0

inline uint32_t durationUs(XrDuration ns) {
    if (ns >= XrDuration(0xFFFFFFFFull) * 1000) return 0xFFFFFFFFu;
    return uint32_t((ns + 999) / 1000);
}

bool decode(const XrHapticBaseHeader* fb, wire::Haptic& p) {
    switch (fb->type) {
        case XR_TYPE_HAPTIC_VIBRATION: {
            const auto* v = reinterpret_cast<const XrHapticVibration*>(fb);
            p.amplitude = clamp01(v->amplitude);
            if (v->duration <= 0) p.flags |= wire::HF_MIN_DURATION;
            else                  p.durationUs = durationUs(v->duration);
            if (v->frequency == XR_FREQUENCY_UNSPECIFIED) p.flags |= wire::HF_FREQ_UNSPEC;
            else                                          p.frequencyHz = v->frequency;
            return true;
        }
#ifdef XR_FB_haptic_amplitude_envelope
        case XR_TYPE_HAPTIC_AMPLITUDE_ENVELOPE_VIBRATION_FB: {
            const auto* v = reinterpret_cast<const XrHapticAmplitudeEnvelopeVibrationFB*>(fb);
            float peak = 0.f;
            for (uint32_t i = 0; i < v->amplitudeCount; ++i) peak = std::max(peak, v->amplitudes[i]);
            p.amplitude  = clamp01(peak);
            p.durationUs = v->duration > 0 ? durationUs(v->duration) : 0;
            p.flags |= wire::HF_ENVELOPE | wire::HF_FREQ_UNSPEC | (v->duration > 0 ? 0 : wire::HF_MIN_DURATION);
            return true;
        }
#endif
#ifdef XR_FB_haptic_pcm
        case XR_TYPE_HAPTIC_PCM_VIBRATION_FB: {
            const auto* v = reinterpret_cast<const XrHapticPcmVibrationFB*>(fb);
            float peak = 0.f;
            for (uint32_t i = 0; i < v->bufferSize; ++i) peak = std::max(peak, std::fabs(v->buffer[i]));
            p.amplitude  = clamp01(peak);
            p.durationUs = v->sampleRate > 0.f ? uint32_t(double(v->bufferSize) * 1e6 / v->sampleRate) : 0;
            p.flags |= wire::HF_PCM | wire::HF_FREQ_UNSPEC | (v->append ? wire::HF_APPEND : 0);
            return true;
        }
#endif
        default:
            return false;
    }
}

// ---------------------------------------------------------------- hooks

XRAPI_ATTR XrResult XRAPI_CALL Hook_ApplyHapticFeedback(XrSession session, const XrHapticActionInfo* info,
                                                        const XrHapticBaseHeader* fb) {
    const XrResult r = g_next.applyHaptic(session, info, fb);
    if (r != XR_SUCCESS || !info || !fb || g_link.target.load(std::memory_order_relaxed) == 0) return r;
    wire::Haptic p{};
    if (!decode(fb, p)) return r;
    p.hand = resolveHand(session, info);
    fillHeader(p.h, wire::T_HAPTIC, nowNs());
    sendPaired(&p, sizeof p);
    return r;
}

XRAPI_ATTR XrResult XRAPI_CALL Hook_StopHapticFeedback(XrSession session, const XrHapticActionInfo* info) {
    const XrResult r = g_next.stopHaptic(session, info);
    if (r == XR_SUCCESS && info) sendStop(resolveHand(session, info), wire::SR_APP);
    return r;
}

XRAPI_ATTR XrResult XRAPI_CALL Hook_PollEvent(XrInstance instance, XrEventDataBuffer* ev) {
    const XrResult r = g_next.pollEvent(instance, ev);
    if (r != XR_SUCCESS) return r;
    if (ev->type == XR_TYPE_EVENT_DATA_INTERACTION_PROFILE_CHANGED) {
        clearHandCache();
    } else if (ev->type == XR_TYPE_EVENT_DATA_SESSION_STATE_CHANGED) {
        const auto* s = reinterpret_cast<const XrEventDataSessionStateChanged*>(ev);
        const bool focused = s->state == XR_SESSION_STATE_FOCUSED;
        if (g_link.focused.exchange(focused) && !focused) sendStop(wire::HAND_BOTH, wire::SR_UNFOCUS);
    }
    return r;
}

XRAPI_ATTR XrResult XRAPI_CALL Hook_DestroyAction(XrAction action) {
    {
        std::lock_guard<std::mutex> lk(g_handMu);
        g_handCache.erase(action);
    }
    return g_next.destroyAction(action);
}

XRAPI_ATTR XrResult XRAPI_CALL Hook_DestroyInstance(XrInstance instance) {
    linkStop();
    clearHandCache();
    const XrResult r = g_next.destroyInstance(instance);
    if (instance == g_instance) g_instance = XR_NULL_HANDLE;
    return r;
}

XRAPI_ATTR XrResult XRAPI_CALL Layer_GetInstanceProcAddr(XrInstance instance, const char* name,
                                                         PFN_xrVoidFunction* fn) {
    if (!name || !fn) return XR_ERROR_VALIDATION_FAILURE;
#define XEMS_HOOK(api, hook)                                                \
    if (!strcmp(name, api)) {                                               \
        *fn = reinterpret_cast<PFN_xrVoidFunction>(hook);                   \
        return XR_SUCCESS;                                                  \
    }
    XEMS_HOOK("xrGetInstanceProcAddr", Layer_GetInstanceProcAddr)
    if (g_instance != XR_NULL_HANDLE) {
        XEMS_HOOK("xrApplyHapticFeedback", Hook_ApplyHapticFeedback)
        XEMS_HOOK("xrStopHapticFeedback", Hook_StopHapticFeedback)
        XEMS_HOOK("xrPollEvent", Hook_PollEvent)
        XEMS_HOOK("xrDestroyAction", Hook_DestroyAction)
        XEMS_HOOK("xrDestroyInstance", Hook_DestroyInstance)
    }
#undef XEMS_HOOK
    if (!g_next.getInstanceProcAddr) {
        *fn = nullptr;
        return XR_ERROR_FUNCTION_UNSUPPORTED;
    }
    return g_next.getInstanceProcAddr(instance, name, fn);
}

template <typename T>
bool resolve(const char* name, T& out) {
    PFN_xrVoidFunction f = nullptr;
    if (XR_FAILED(g_next.getInstanceProcAddr(g_instance, name, &f)) || !f) return false;
    out = reinterpret_cast<T>(f);
    return true;
}

XRAPI_ATTR XrResult XRAPI_CALL Layer_CreateApiLayerInstance(const XrInstanceCreateInfo* info,
                                                            const XrApiLayerCreateInfo* layerInfo,
                                                            XrInstance* instance) {
    if (!layerInfo || !layerInfo->nextInfo || strcmp(layerInfo->nextInfo->layerName, kLayerName) != 0)
        return XR_ERROR_INITIALIZATION_FAILED;

    XrApiLayerCreateInfo down = *layerInfo;
    down.nextInfo = layerInfo->nextInfo->next;
    const XrResult r = layerInfo->nextInfo->nextCreateApiLayerInstance(info, &down, instance);
    if (XR_FAILED(r)) return r;

    g_next = Next{};
    g_next.getInstanceProcAddr = layerInfo->nextInfo->nextGetInstanceProcAddr;
    g_instance = *instance;
    const bool ok = resolve("xrDestroyInstance", g_next.destroyInstance) &&
                    resolve("xrApplyHapticFeedback", g_next.applyHaptic) &&
                    resolve("xrStopHapticFeedback", g_next.stopHaptic) &&
                    resolve("xrPollEvent", g_next.pollEvent) &&
                    resolve("xrDestroyAction", g_next.destroyAction) &&
                    resolve("xrStringToPath", g_next.stringToPath) &&
                    resolve("xrPathToString", g_next.pathToString) &&
                    resolve("xrEnumerateBoundSourcesForAction", g_next.enumBoundSources);
    if (!ok) {
        // Pass-through: the game must never fail because of this layer.
        XLOG("dispatch incomplete, layer passive");
        g_instance = XR_NULL_HANDLE;
        return r;
    }
    g_next.stringToPath(g_instance, "/user/hand/left", &g_leftPath);
    g_next.stringToPath(g_instance, "/user/hand/right", &g_rightPath);
    if (!linkStart()) g_link.target.store(0);
    XLOG("active, session %08x", g_link.session);
    return r;
}

}  // namespace

extern "C" XRAPI_ATTR XrResult XRAPI_CALL __attribute__((visibility("default")))
xrNegotiateLoaderApiLayerInterface(const XrNegotiateLoaderInfo* loaderInfo, const char* layerName,
                                   XrNegotiateApiLayerRequest* req) {
    XLOG("negotiate (asset layer) %s", layerName ? layerName : "?");
    if (!loaderInfo || !req || !layerName || strcmp(layerName, kLayerName) != 0 ||
        loaderInfo->structType != XR_LOADER_INTERFACE_STRUCT_LOADER_INFO ||
        loaderInfo->structVersion != XR_LOADER_INFO_STRUCT_VERSION ||
        loaderInfo->structSize != sizeof(XrNegotiateLoaderInfo) ||
        req->structType != XR_LOADER_INTERFACE_STRUCT_API_LAYER_REQUEST ||
        req->structVersion != XR_API_LAYER_INFO_STRUCT_VERSION ||
        req->structSize != sizeof(XrNegotiateApiLayerRequest) ||
        loaderInfo->minInterfaceVersion > XR_CURRENT_LOADER_API_LAYER_VERSION ||
        loaderInfo->maxInterfaceVersion < XR_CURRENT_LOADER_API_LAYER_VERSION ||
        loaderInfo->minApiVersion > XR_CURRENT_API_VERSION)
        return XR_ERROR_INITIALIZATION_FAILED;

    req->layerInterfaceVersion  = XR_CURRENT_LOADER_API_LAYER_VERSION;
    req->layerApiVersion        = std::min<XrVersion>(loaderInfo->maxApiVersion, XR_CURRENT_API_VERSION);
    req->getInstanceProcAddr    = Layer_GetInstanceProcAddr;
    req->createApiLayerInstance = Layer_CreateApiLayerInstance;
    return XR_SUCCESS;
}
