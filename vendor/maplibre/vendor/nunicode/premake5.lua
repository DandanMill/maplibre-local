project "nunicode-vendor"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    files
    {
        "src/**.c"
    }

    includedirs
    {
        "src",
        "include",
    }

    filter "configurations:Debug"
        runtime "DEBUG"
        symbols "on"

    filter "configurations:Release"
		runtime "Release"
        optimize "on"