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

#include "fake_runtime.h"

namespace {
template <typename T> T get(PFN_xrGetInstanceProcAddr g, const char* n) {
    PFN_xrVoidFunction f = nullptr;
    g(kInst, n, &f);
    return reinterpret_cast<T>(f);
}
void sleepMs(int ms) { std::this_thread::sleep_for(std::chrono::milliseconds(ms)); }
}  // namespace

int main(int argc, char** argv) {
    // host_driver <layer.so>              — plays the loader: negotiate + create through the layer
    // host_driver <loader_shim.so> shim   — plays the game: the shim is the loader (fake original beside it)
    if (argc < 2) return 2;
    const bool shimMode = argc > 2 && !strcmp(argv[2], "shim");
    void* so = dlopen(argv[1], RTLD_NOW | RTLD_LOCAL);
    if (!so) { fprintf(stderr, "dlopen: %s\n", dlerror()); return 1; }

    int* applied = &g_applied; int* stopped = &g_stopped;
    XrSessionState* nextState = &g_nextState; bool* pendingEvent = &g_pendingEvent;
    PFN_xrGetInstanceProcAddr gipa = nullptr;
    XrInstanceCreateInfo info{XR_TYPE_INSTANCE_CREATE_INFO};
    XrInstance inst = XR_NULL_HANDLE;

    if (shimMode) {
        void* orig = dlopen("libopenxr_loader_orig_xems.so", RTLD_NOW | RTLD_NOLOAD);
        if (!orig) { puts("shim did not load the original loader FAIL"); return 1; }
        reinterpret_cast<void (*)(int**, int**, XrSessionState**, bool**)>(dlsym(orig, "fake_state"))(
            &applied, &stopped, &nextState, &pendingEvent);
        gipa = reinterpret_cast<PFN_xrGetInstanceProcAddr>(dlsym(so, "xrGetInstanceProcAddr"));
        PFN_xrVoidFunction f = nullptr;
        gipa(XR_NULL_HANDLE, "xrCreateInstance", &f);
        if (reinterpret_cast<void*>(f) != dlsym(so, "xrCreateInstance")) { puts("shim create not ours FAIL"); return 1; }
        if (reinterpret_cast<PFN_xrCreateInstance>(f)(&info, &inst) != XR_SUCCESS || inst != kInst) { puts("create FAIL"); return 1; }
        // Trampolines: one the original has, one it lacks.
        XrPath p = 0;
        auto s2p = reinterpret_cast<PFN_xrStringToPath>(dlsym(so, "xrStringToPath"));
        if (s2p(inst, "/user/hand/left", &p) != XR_SUCCESS || p != kLeft) { puts("trampoline FAIL"); return 1; }
        auto beginFrame = reinterpret_cast<PFN_xrBeginFrame>(dlsym(so, "xrBeginFrame"));
        if (!beginFrame || beginFrame(kSess, nullptr) != XR_ERROR_FUNCTION_UNSUPPORTED) { puts("missing-fn trampoline FAIL"); return 1; }
    } else {
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
        if (rq.createApiLayerInstance(&info, &ci, &inst) != XR_SUCCESS || inst != kInst) { puts("create FAIL"); return 1; }
        gipa = rq.getInstanceProcAddr;
    }

    auto apply   = get<PFN_xrApplyHapticFeedback>(gipa, "xrApplyHapticFeedback");
    auto stop    = get<PFN_xrStopHapticFeedback>(gipa, "xrStopHapticFeedback");
    auto poll    = get<PFN_xrPollEvent>(gipa, "xrPollEvent");
    auto destroy = get<PFN_xrDestroyInstance>(gipa, "xrDestroyInstance");
    if (!shimMode && reinterpret_cast<void*>(apply) == reinterpret_cast<void*>(rtApply)) { puts("hook FAIL"); return 1; }
    // Shim: a game that links xrApplyHapticFeedback directly must go through the layer too (used for i == 0).
    auto applyExport = shimMode ? reinterpret_cast<PFN_xrApplyHapticFeedback>(dlsym(so, "xrApplyHapticFeedback")) : apply;

    XrEventDataBuffer ev{XR_TYPE_EVENT_DATA_BUFFER};
    *pendingEvent = true;  // -> FOCUSED
    poll(inst, &ev);

    sleepMs(1500);  // pairing + a few PING/PONG rounds

    double worstUs = 0;
    for (int i = 0; i < 40; ++i) {  // 20 left, 20 right, XrHapticVibration
        XrHapticActionInfo ai{XR_TYPE_HAPTIC_ACTION_INFO, nullptr, kBoth, i % 2 ? kRight : kLeft};
        XrHapticVibration v{XR_TYPE_HAPTIC_VIBRATION, nullptr, 40'000'000, XR_FREQUENCY_UNSPECIFIED,
                            0.025f * float(i + 1)};
        auto t = std::chrono::steady_clock::now();
        (i == 0 ? applyExport : apply)(kSess, &ai, reinterpret_cast<XrHapticBaseHeader*>(&v));
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
    *nextState = XR_SESSION_STATE_VISIBLE;  // unfocus -> STOP both
    *pendingEvent = true;
    poll(inst, &ev);
    sleepMs(50);
    destroy(inst);
    printf("driver%s applied=%d stopped=%d worst_hook_us=%.1f\n", shimMode ? " (shim)" : "", *applied, *stopped, worstUs);
    return *applied == 41 && *stopped == 1 ? 0 : 1;
}
