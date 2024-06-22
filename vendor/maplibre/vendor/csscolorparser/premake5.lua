project "csscolorparser"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    files
    {
        "csscolorparser.cpp"
    }

    includedirs
    {
        "csscolorparser"
    }

    filter "configurations:Debug"
        runtime "DEBUG"
        symbols "on"

    filter "configurations:Release"
		runtime "Release"
        optimize "on"