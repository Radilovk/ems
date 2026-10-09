// Host test: stands in for the game's ORIGINAL OpenXR loader (libopenxr_loader_orig_xems.so) behind the loader
// shim. Exports what a real loader exports (xrGetInstanceProcAddr, xrCreateInstance, …) over the fake runtime.
#include "fake_runtime.h"

#define FAKE_EXPORT extern "C" __attribute__((visibility("default")))

FAKE_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrCreateInstance(const XrInstanceCreateInfo*, XrInstance* i) {
    *i = kInst;
    return XR_SUCCESS;
}
FAKE_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrGetInstanceProcAddr(XrInstance inst, const char* n, PFN_xrVoidFunction* f) {
    if (!strcmp(n, "xrCreateInstance")) { *f = reinterpret_cast<PFN_xrVoidFunction>(xrCreateInstance); return XR_SUCCESS; }
    return rtGipa(inst, n, f);
}
FAKE_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrStringToPath(XrInstance i, const char* s, XrPath* p) { return rtStringToPath(i, s, p); }
FAKE_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrApplyHapticFeedback(XrSession s, const XrHapticActionInfo* a, const XrHapticBaseHeader* h) {
    return rtApply(s, a, h);
}
/** The driver reads the counters and steers the session state through these. */
FAKE_EXPORT void fake_state(int** applied, int** stopped, XrSessionState** next, bool** pending) {
    *applied = &g_applied; *stopped = &g_stopped; *next = &g_nextState; *pending = &g_pendingEvent;
}
