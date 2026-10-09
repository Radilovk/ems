// XEMS loader shim: shipped in the game as lib/arm64-v8a/libopenxr_loader.so, the game's own loader renamed to
// libopenxr_loader_orig_xems.so beside it. Needed because many Quest loaders (Godot's among them) never look for
// implicit API layers inside the APK. The shim plays the loader's part for exactly one layer — the XEMS haptic
// layer, compiled into this same file — and hands every other call to the original loader unchanged:
//   xrGetInstanceProcAddr / xrCreateInstance  → build the layer chain (layer → original loader)
//   the five calls the layer hooks             → through the layer
//   every other xr* symbol                     → a 3-instruction trampoline into the original (or
//                                                 XR_ERROR_FUNCTION_UNSUPPORTED if the original lacks it)
// If the original cannot be loaded every call fails cleanly with XR_ERROR_RUNTIME_FAILURE; the game shows its
// own "no VR" path instead of crashing.

#include "xems_haptic_layer.cpp"   // one TU: the layer's internals stay hidden, no second .so to load
#include "loader_exports.h"

#include <dlfcn.h>

#ifndef XEMS_ORIG_LOADER
#define XEMS_ORIG_LOADER "libopenxr_loader_orig_xems.so"
#endif

extern "C" {
// Filled at load time; read by the trampolines below. Hidden: only this .so's asm uses it.
__attribute__((visibility("hidden"))) void* xems_fwd[XEMS_LOADER_FORWARD_COUNT];
__attribute__((visibility("hidden"))) XrResult xems_unsupported() { return XR_ERROR_FUNCTION_UNSUPPORTED; }
}

// Trampolines: jump to xems_fwd[i] with every argument register untouched (any signature works).
#if defined(__aarch64__)
#define XEMS_TRAMPOLINE(i, name)                                   \
    asm(".text\n.globl " #name "\n.type " #name ",%function\n"     \
        ".p2align 2\n" #name ":\n"                                 \
        "  adrp x16, xems_fwd\n"                                   \
        "  add  x16, x16, :lo12:xems_fwd\n"                        \
        "  ldr  x16, [x16, #(" #i " * 8)]\n"                       \
        "  cbz  x16, 1f\n"                                         \
        "  br   x16\n"                                             \
        "1: b xems_unsupported\n"                                  \
        ".size " #name ", .-" #name "\n");
#elif defined(__x86_64__)
#define XEMS_TRAMPOLINE(i, name)                                   \
    asm(".text\n.globl " #name "\n.type " #name ",@function\n"     \
        ".p2align 4\n" #name ":\n"                                 \
        "  movq xems_fwd+" #i "*8(%rip), %r11\n"                   \
        "  testq %r11, %r11\n"                                     \
        "  jz 1f\n"                                                \
        "  jmp *%r11\n"                                            \
        "1: jmp xems_unsupported\n"                                \
        ".size " #name ", .-" #name "\n");
#else
#error "loader shim: arm64 (Quest) or x86_64 (host tests) only"
#endif
XEMS_LOADER_FORWARDS(XEMS_TRAMPOLINE)
#undef XEMS_TRAMPOLINE

namespace {

struct Orig {
    void* so = nullptr;
    PFN_xrGetInstanceProcAddr gipa = nullptr;
    PFN_xrCreateInstance createInstance = nullptr;
    PFN_xrDestroyInstance destroyInstance = nullptr;
    PFN_xrApplyHapticFeedback apply = nullptr;
    PFN_xrStopHapticFeedback stop = nullptr;
    PFN_xrPollEvent poll = nullptr;
    PFN_xrDestroyAction destroyAction = nullptr;
} g_orig;

const char* const kForwardNames[] = {
#define XEMS_NAME(i, name) #name,
    XEMS_LOADER_FORWARDS(XEMS_NAME)
#undef XEMS_NAME
};

template <typename T> void sym(T& out, const char* name) { out = reinterpret_cast<T>(dlsym(g_orig.so, name)); }

__attribute__((constructor)) void shimLoad() {
    g_orig.so = dlopen(XEMS_ORIG_LOADER, RTLD_NOW | RTLD_LOCAL);
    if (!g_orig.so) {
        XLOG("loader shim: cannot open " XEMS_ORIG_LOADER ": %s", dlerror());
        return;
    }
    for (int i = 0; i < XEMS_LOADER_FORWARD_COUNT; ++i) xems_fwd[i] = dlsym(g_orig.so, kForwardNames[i]);
    sym(g_orig.gipa, "xrGetInstanceProcAddr");
    sym(g_orig.createInstance, "xrCreateInstance");
    sym(g_orig.destroyInstance, "xrDestroyInstance");
    sym(g_orig.apply, "xrApplyHapticFeedback");
    sym(g_orig.stop, "xrStopHapticFeedback");
    sym(g_orig.poll, "xrPollEvent");
    sym(g_orig.destroyAction, "xrDestroyAction");
    XLOG("loader shim: original loader loaded");
}

/** The original's entry point for a name (no instance → global commands). */
PFN_xrVoidFunction origProc(XrInstance inst, const char* name) {
    PFN_xrVoidFunction f = nullptr;
    if (g_orig.gipa) g_orig.gipa(inst, name, &f);
    return f;
}

XRAPI_ATTR XrResult XRAPI_CALL Shim_NextCreate(const XrInstanceCreateInfo* info, const XrApiLayerCreateInfo*,
                                               XrInstance* instance) {
    auto create = g_orig.createInstance
                      ? g_orig.createInstance
                      : reinterpret_cast<PFN_xrCreateInstance>(origProc(XR_NULL_HANDLE, "xrCreateInstance"));
    return create ? create(info, instance) : XR_ERROR_RUNTIME_FAILURE;
}

/** Inside the layer chain (our instance) → the layer's view; else the original's. */
PFN_xrVoidFunction chainProc(XrInstance inst, const char* name) {
    PFN_xrVoidFunction f = nullptr;
    if (inst != XR_NULL_HANDLE && inst == g_instance) Layer_GetInstanceProcAddr(inst, name, &f);
    return f ? f : origProc(inst, name);
}

}  // namespace

#define XEMS_EXPORT __attribute__((visibility("default")))

extern "C" {

XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrCreateInstance(const XrInstanceCreateInfo* info, XrInstance* instance) {
    if (!g_orig.so) return XR_ERROR_RUNTIME_FAILURE;
    XrApiLayerNextInfo next{XR_LOADER_INTERFACE_STRUCT_API_LAYER_NEXT_INFO, XR_API_LAYER_NEXT_INFO_STRUCT_VERSION,
                            sizeof next, {}, g_orig.gipa, Shim_NextCreate, nullptr};
    strncpy(next.layerName, kLayerName, sizeof next.layerName - 1);
    XrApiLayerCreateInfo ci{};
    ci.structType = XR_LOADER_INTERFACE_STRUCT_API_LAYER_CREATE_INFO;
    ci.structVersion = XR_API_LAYER_CREATE_INFO_STRUCT_VERSION;
    ci.structSize = sizeof ci;
    ci.nextInfo = &next;
    return Layer_CreateApiLayerInstance(info, &ci, instance);
}

XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrGetInstanceProcAddr(XrInstance instance, const char* name,
                                                     PFN_xrVoidFunction* function) {
    if (!name || !function) return XR_ERROR_VALIDATION_FAILURE;
    if (!g_orig.so) { *function = nullptr; return XR_ERROR_RUNTIME_FAILURE; }
    // The game must reach our xrCreateInstance / xrGetInstanceProcAddr however it asks for them.
    if (!strcmp(name, "xrCreateInstance")) {
        *function = reinterpret_cast<PFN_xrVoidFunction>(xrCreateInstance);
        return XR_SUCCESS;
    }
    if (!strcmp(name, "xrGetInstanceProcAddr")) {
        *function = reinterpret_cast<PFN_xrVoidFunction>(xrGetInstanceProcAddr);
        return XR_SUCCESS;
    }
    if (instance != XR_NULL_HANDLE && instance == g_instance) return Layer_GetInstanceProcAddr(instance, name, function);
    return g_orig.gipa(instance, name, function);
}

// The five calls the layer hooks, for a game that links them directly instead of asking xrGetInstanceProcAddr.
#define XEMS_VIA_CHAIN(pfn, field, name, inst)                                                         \
    auto f = reinterpret_cast<pfn>(chainProc(inst, name));                                             \
    if (!f) f = g_orig.field;                                                                          \
    if (!f) return XR_ERROR_FUNCTION_UNSUPPORTED;

XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrDestroyInstance(XrInstance instance) {
    XEMS_VIA_CHAIN(PFN_xrDestroyInstance, destroyInstance, "xrDestroyInstance", instance)
    return f(instance);
}
XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrPollEvent(XrInstance instance, XrEventDataBuffer* buf) {
    XEMS_VIA_CHAIN(PFN_xrPollEvent, poll, "xrPollEvent", instance)
    return f(instance, buf);
}
XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrApplyHapticFeedback(XrSession s, const XrHapticActionInfo* a, const XrHapticBaseHeader* h) {
    XEMS_VIA_CHAIN(PFN_xrApplyHapticFeedback, apply, "xrApplyHapticFeedback", g_instance)
    return f(s, a, h);
}
XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrStopHapticFeedback(XrSession s, const XrHapticActionInfo* a) {
    XEMS_VIA_CHAIN(PFN_xrStopHapticFeedback, stop, "xrStopHapticFeedback", g_instance)
    return f(s, a);
}
XEMS_EXPORT XRAPI_ATTR XrResult XRAPI_CALL xrDestroyAction(XrAction action) {
    XEMS_VIA_CHAIN(PFN_xrDestroyAction, destroyAction, "xrDestroyAction", g_instance)
    return f(action);
}
#undef XEMS_VIA_CHAIN

}  // extern "C"
