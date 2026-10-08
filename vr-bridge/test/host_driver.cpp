// Host test: plays loader + runtime around the real layer .so and fires a scripted haptic sequence.
//   host_driver <layer.so>
#include <openxr/openxr.h>
#include <openxr/openxr_loader_negotiation.h>

#include <dlfcn.h>

#include <chrono>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <thread>

namespace {
const XrInstance kInst = reinterpret_cast<XrInstance>(uintptr_t(0x1001));
const XrSession  kSess = reinterpret_cast<XrSession>(uintptr_t(0x2002));
const XrAction   kBoth = reinterpret_cast<XrAction>(uintptr_t(0x3003));
const XrPath     kLeft = 11, kRight = 12, kLeftHaptic = 21, kRightHaptic = 22;
int g_applied = 0, g_stopped = 0;
XrSessionState g_nextState = XR_SESSION_STATE_FOCUSED;
bool g_pendingEvent = false;

XRAPI_ATTR XrResult XRAPI_CALL rtCreate(const XrInstanceCreateInfo*, const XrApiLayerCreateInfo*, XrInstance* i) {
    *i = kInst;
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtDestroyInstance(XrInstance) { return XR_SUCCESS; }
XRAPI_ATTR XrResult XRAPI_CALL rtApply(XrSession, const XrHapticActionInfo*, const XrHapticBaseHeader*) {
    ++g_applied;
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtStop(XrSession, const XrHapticActionInfo*) {
    ++g_stopped;
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtPoll(XrInstance, XrEventDataBuffer* b) {
    if (!g_pendingEvent) return XR_EVENT_UNAVAILABLE;
    g_pendingEvent = false;
    auto* e = reinterpret_cast<XrEventDataSessionStateChanged*>(b);
    e->type    = XR_TYPE_EVENT_DATA_SESSION_STATE_CHANGED;
    e->session = kSess;
    e->state   = g_nextState;
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtDestroyAction(XrAction) { return XR_SUCCESS; }
XRAPI_ATTR XrResult XRAPI_CALL rtStringToPath(XrInstance, const char* s, XrPath* p) {
    *p = !strcmp(s, "/user/hand/left") ? kLeft : !strcmp(s, "/user/hand/right") ? kRight : 99;
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtPathToString(XrInstance, XrPath p, uint32_t cap, uint32_t* n, char* buf) {
    const char* s = p == kLeftHaptic ? "/user/hand/left/output/haptic"
                  : p == kRightHaptic ? "/user/hand/right/output/haptic" : "/user/gamepad";
    *n = uint32_t(strlen(s) + 1);
    if (cap >= *n) memcpy(buf, s, *n);
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtEnumBound(XrSession, const XrBoundSourcesForActionEnumerateInfo*, uint32_t cap,
                                           uint32_t* n, XrPath* out) {
    *n = 2;
    if (cap >= 2) { out[0] = kLeftHaptic; out[1] = kRightHaptic; }
    return XR_SUCCESS;
}
XRAPI_ATTR XrResult XRAPI_CALL rtGipa(XrInstance, const char* n, PFN_xrVoidFunction* f) {
#define R(name, fn) if (!strcmp(n, name)) { *f = reinterpret_cast<PFN_xrVoidFunction>(fn); return XR_SUCCESS; }
    R("xrDestroyInstance", rtDestroyInstance) R("xrApplyHapticFeedback", rtApply)
    R("xrStopHapticFeedback", rtStop) R("xrPollEvent", rtPoll) R("xrDestroyAction", rtDestroyAction)
    R("xrStringToPath", rtStringToPath) R("xrPathToString", rtPathToString)
    R("xrEnumerateBoundSourcesForAction", rtEnumBound)
#undef R
    *f = nullptr;
    return XR_ERROR_FUNCTION_UNSUPPORTED;
}
template <typename T> T get(PFN_xrGetInstanceProcAddr g, const char* n) {
    PFN_xrVoidFunction f = nullptr;
    g(kInst, n, &f);
    return reinterpret_cast<T>(f);
}
void sleepMs(int ms) { std::this_thread::sleep_for(std::chrono::milliseconds(ms)); }
}  // namespace

int main(int argc, char** argv) {
    if (argc < 2) return 2;
    void* so = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (!so) { fprintf(stderr, "dlopen: %s\n", dlerror()); return 1; }
    auto negotiate = reinterpret_cast<PFN_xrNegotiateLoaderApiLayerInterface>(
        dlsym(so, "xrNegotiateLoaderApiLayerInterface"));

    XrNegotiateLoaderInfo li{XR_LOADER_INTERFACE_STRUCT_LOADER_INFO, XR_LOADER_INFO_STRUCT_VERSION,
                             sizeof li, 1, XR_CURRENT_LOADER_API_LAYER_VERSION, XR_MAKE_VERSION(1, 0, 0),
                             XR_MAKE_VERSION(1, 0, 34)};
    XrNegotiateApiLayerRequest rq{XR_LOADER_INTERFACE_STRUCT_API_LAYER_REQUEST, XR_API_LAYER_INFO_STRUCT_VERSION,
                                  sizeof rq, 0, 0, nullptr, nullptr};
    if (negotiate(&li, "XR_APILAYER_XEMS_haptic_bridge", &rq) != XR_SUCCESS) { puts("negotiate FAIL"); return 1; }
    if (rq.layerApiVersion != XR_MAKE_VERSION(1, 0, 34)) { puts("api version FAIL"); return 1; }

    XrApiLayerNextInfo next{XR_LOADER_INTERFACE_STRUCT_API_LAYER_NEXT_INFO, XR_API_LAYER_NEXT_INFO_STRUCT_VERSION,
                            sizeof next, "XR_APILAYER_XEMS_haptic_bridge", rtGipa, rtCreate, nullptr};
    XrApiLayerCreateInfo ci{};
    ci.structType = XR_LOADER_INTERFACE_STRUCT_API_LAYER_CREATE_INFO;
    ci.structVersion = XR_API_LAYER_CREATE_INFO_STRUCT_VERSION;
    ci.structSize = sizeof ci;
    ci.nextInfo = &next;
    XrInstanceCreateInfo info{XR_TYPE_INSTANCE_CREATE_INFO};
    XrInstance inst = XR_NULL_HANDLE;
    if (rq.createApiLayerInstance(&info, &ci, &inst) != XR_SUCCESS || inst != kInst) { puts("create FAIL"); return 1; }

    auto apply   = get<PFN_xrApplyHapticFeedback>(rq.getInstanceProcAddr, "xrApplyHapticFeedback");
    auto stop    = get<PFN_xrStopHapticFeedback>(rq.getInstanceProcAddr, "xrStopHapticFeedback");
    auto poll    = get<PFN_xrPollEvent>(rq.getInstanceProcAddr, "xrPollEvent");
    auto destroy = get<PFN_xrDestroyInstance>(rq.getInstanceProcAddr, "xrDestroyInstance");
    if (reinterpret_cast<void*>(apply) == reinterpret_cast<void*>(rtApply)) { puts("hook FAIL"); return 1; }

    XrEventDataBuffer ev{XR_TYPE_EVENT_DATA_BUFFER};
    g_pendingEvent = true;  // -> FOCUSED
    poll(inst, &ev);

    sleepMs(1500);  // pairing + a few PING/PONG rounds

    double worstUs = 0;
    for (int i = 0; i < 40; ++i) {  // 20 left, 20 right, XrHapticVibration
        XrHapticActionInfo ai{XR_TYPE_HAPTIC_ACTION_INFO, nullptr, kBoth, i % 2 ? kRight : kLeft};
        XrHapticVibration v{XR_TYPE_HAPTIC_VIBRATION, nullptr, 40'000'000, XR_FREQUENCY_UNSPECIFIED,
                            0.025f * float(i + 1)};
        auto t = std::chrono::steady_clock::now();
        apply(kSess, &ai, reinterpret_cast<XrHapticBaseHeader*>(&v));
        worstUs = std::max(worstUs, std::chrono::duration<double, std::micro>(std::chrono::steady_clock::now() - t).count());
        sleepMs(11);
    }
    {   // XR_NULL_PATH -> bound sources on both hands -> HAND_BOTH; PCM 160 samples @ 2 kHz = 80 ms, peak 0.9
        float pcm[160];
        for (int k = 0; k < 160; ++k) pcm[k] = 0.9f * std::sin(k * 0.3f);
        pcm[37] = -0.9f;
        uint32_t used = 0;
        XrHapticActionInfo ai{XR_TYPE_HAPTIC_ACTION_INFO, nullptr, kBoth, XR_NULL_PATH};
        XrHapticPcmVibrationFB p{XR_TYPE_HAPTIC_PCM_VIBRATION_FB, nullptr, 160, pcm, 2000.f, XR_TRUE, &used};
        apply(kSess, &ai, reinterpret_cast<XrHapticBaseHeader*>(&p));
        XrHapticActionInfo al{XR_TYPE_HAPTIC_ACTION_INFO, nullptr, kBoth, kLeft};
        sleepMs(5);
        stop(kSess, &al);
    }
    sleepMs(20);
    g_nextState = XR_SESSION_STATE_VISIBLE;  // unfocus -> STOP both
    g_pendingEvent = true;
    poll(inst, &ev);
    sleepMs(50);
    destroy(inst);
    printf("driver applied=%d stopped=%d worst_hook_us=%.1f\n", g_applied, g_stopped, worstUs);
    return g_applied == 41 && g_stopped == 1 ? 0 : 1;
}
