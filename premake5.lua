workspace "maps"
    architecture "x64"
    configurations
    {
        "Debug",
        "Release"
    }

    startproject "Map"

include "vendor/maplibre"
include "vendor/maplibre/vendor/csscolorparser"
include "vendor/maplibre/vendor/sqlite"
include "vendor/maplibre/vendor/nunicode"
include "vendor/maplibre/vendor/parsedate"

project "Map"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir "bin/%{cfg.buildcfg}"

    files 
    {
        "src/**.cpp",
        "src/**.hpp"
    }

    includedirs
    {
        "vendor/maplibre/include",
        "vendor/maplibre/platform/default/include",
        "vendor/maplibre/vendor/unordered_dense/include",
        "vendor/maplibre/vendor/mapbox-base/extras/args",
        "vendor/maplibre/vendor/mapbox-base/include",
        "vendor/maplibre/vendor/mapbox-base/deps/geometry.hpp/include",
        "vendor/maplibre/vendor/mapbox-base/deps/variant/include",
    }

    links 
    {
        "ml-core",
        "csscolorparser",
        "sqlite-vendor",
        "nunicode-vendor",
        "parsedate-vendor",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libuv.lib",
        "opengl32.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libcurl-d.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/zlibd.lib",
        "crypt32.lib",
        "bcrypt.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/jpeg.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libwebpdecoder.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libwebp.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libwebpdemux.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libwebpmux.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libsharpyuv.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/dl.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/icudtd.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/icuind.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/icuucd.lib",
        "vendor/maplibre/platform/windows/vendor/vcpkg/installed/x64-windows/debug/lib/libpng16d.lib",
        "psapi.lib",
        "user32.lib",
        "advapi32.lib",
        "iphlpapi.lib",
        "userenv.lib",
        "ws2_32.lib",
        "dbghelp.lib",
        "ole32.lib",
        "uuid.lib",
        "kernel32.lib",
        "gdi32.lib",
        "winspool.lib",
        "shell32.lib",
        "oleaut32.lib",
        "comdlg32.lib",
    }

    defines
    {
        "_USE_MATH_DEFINES",
    }

    filter "configurations:Debug"
        defines "DEBUG"
        runtime "DEBUG"
        symbols "on"
    
    filter "configurations:Release"
		defines "NDEBUG"
		runtime "Release"
		optimize "on"