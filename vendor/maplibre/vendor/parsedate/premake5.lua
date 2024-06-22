project "parsedate-vendor"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    files
    {
        "*.cpp"
    }

    includedirs
    {
        "parsedate",
    }

    filter "configurations:Debug"
        runtime "DEBUG"
        symbols "on"

    filter "configurations:Release"
		runtime "Release"
        optimize "on"