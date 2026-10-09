# XEMS OpenXR haptic bridge layer — Android NDK (Quest 3 = arm64-v8a).
#
#   cmake -S . -B build -G Ninja \
#     -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake \
#     -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-29 -DANDROID_STL=c++_static \
#     -DCMAKE_BUILD_TYPE=Release
#   cmake --build build
#
# Output: build/libXrApiLayer_xems_haptics.so + build/openxr/1/api_layers/implicit.d/XrApiLayer_xems_haptics.json
# (the tree the Khronos loader scans in the APK's assets/).
cmake_minimum_required(VERSION 3.22)
project(xems_vr_haptic_layer LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Headers only. Point at a local OpenXR-SDK checkout to build offline.
set(OPENXR_SDK_DIR "" CACHE PATH "OpenXR-SDK root (contains include/openxr/openxr.h)")
if(NOT OPENXR_SDK_DIR)
    include(FetchContent)
    FetchContent_Declare(openxr_sdk
        GIT_REPOSITORY https://github.com/KhronosGroup/OpenXR-SDK.git
        GIT_TAG        release-1.1.38
        GIT_SHALLOW    TRUE
        SOURCE_SUBDIR  _headers_only)   # no CMakeLists there -> populate, don't build the loader
    FetchContent_MakeAvailable(openxr_sdk)
    set(OPENXR_SDK_DIR ${openxr_sdk_SOURCE_DIR})
endif()

add_library(XrApiLayer_xems_haptics SHARED src/xems_haptic_layer.cpp)
target_include_directories(XrApiLayer_xems_haptics PRIVATE ${OPENXR_SDK_DIR}/include src)
target_compile_definitions(XrApiLayer_xems_haptics PRIVATE XR_NO_PROTOTYPES)

target_compile_options(XrApiLayer_xems_haptics PRIVATE
    -Wall -Wextra -Werror=return-type
    -fvisibility=hidden -fvisibility-inlines-hidden
    -fno-exceptions -fno-rtti
    -ffunction-sections -fdata-sections
    $<$<CONFIG:Release>:-O2 -DNDEBUG>)

# Export exactly one symbol; everything else stays internal so it can't clash with the game's own libs.
set(XEMS_EXPORTS ${CMAKE_CURRENT_BINARY_DIR}/exports.map)
file(WRITE ${XEMS_EXPORTS} "{ global: xrNegotiateLoaderApiLayerInterface; local: *; };\n")
target_link_options(XrApiLayer_xems_haptics PRIVATE
    -Wl,--version-script=${XEMS_EXPORTS}
    -Wl,--gc-sections -Wl,--as-needed -Wl,-z,defs
    -Wl,-z,max-page-size=16384
    $<$<CONFIG:Release>:-s>)
set_target_properties(XrApiLayer_xems_haptics PROPERTIES LINK_DEPENDS ${XEMS_EXPORTS})

if(ANDROID)
    find_library(ANDROID_LOG_LIB log REQUIRED)
    target_link_libraries(XrApiLayer_xems_haptics PRIVATE ${ANDROID_LOG_LIB})
else()
    find_package(Threads REQUIRED)  # host syntax/unit build only
    target_link_libraries(XrApiLayer_xems_haptics PRIVATE Threads::Threads)
endif()

# Loader shim (libopenxr_loader.so in the game, the original renamed beside it): for loaders that never read
# implicit layers from the APK. Same layer code, compiled into one .so with every xr* entry point.
add_library(XrLoaderShim_xems SHARED src/loader_shim.cpp)
set_target_properties(XrLoaderShim_xems PROPERTIES OUTPUT_NAME openxr_loader_xems_shim NO_SONAME ON)
target_include_directories(XrLoaderShim_xems PRIVATE ${OPENXR_SDK_DIR}/include src)
target_compile_definitions(XrLoaderShim_xems PRIVATE XR_NO_PROTOTYPES)
target_compile_options(XrLoaderShim_xems PRIVATE
    -Wall -Wextra -Werror=return-type -fvisibility=hidden -fvisibility-inlines-hidden -fno-exceptions -fno-rtti
    -ffunction-sections -fdata-sections $<$<CONFIG:Release>:-O2 -DNDEBUG>)
set(XEMS_SHIM_EXPORTS ${CMAKE_CURRENT_BINARY_DIR}/shim_exports.map)
file(WRITE ${XEMS_SHIM_EXPORTS} "{ global: xr*; local: *; };\n")
target_link_options(XrLoaderShim_xems PRIVATE
    -Wl,-soname,libopenxr_loader.so   # the name the game links / dlopens
    -Wl,--version-script=${XEMS_SHIM_EXPORTS} -Wl,--gc-sections -Wl,--as-needed -Wl,-z,defs
    -Wl,-z,max-page-size=16384 $<$<CONFIG:Release>:-s>)
if(ANDROID)
    target_link_libraries(XrLoaderShim_xems PRIVATE ${ANDROID_LOG_LIB} dl)
else()
    target_link_libraries(XrLoaderShim_xems PRIVATE Threads::Threads dl)
endif()

add_custom_command(TARGET XrApiLayer_xems_haptics POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_CURRENT_SOURCE_DIR}/manifest/XrApiLayer_xems_haptics.json
            ${CMAKE_CURRENT_BINARY_DIR}/openxr/1/api_layers/implicit.d/XrApiLayer_xems_haptics.json)
