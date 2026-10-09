// Fake OpenXR runtime shared by host_driver (layer mode) and fake_loader (loader-shim mode).
#pragma once
#include <openxr/openxr.h>
#include <openxr/openxr_loader_negotiation.h>

#include <cstring>

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
}  // namespace
