dofile("../../common.lua")

RequireDefaultlibs()

SOLUTION 	"example-module"

targetdir	"bin"
INCLUDES	"source_sdk"
INCLUDES 	"gmod_sdk"
defines		{"NDEBUG"}

WINDOWS()
LINUX()

PROJECT()
SOURCE_SDK_LINKS()

configuration 		"windows"
	postbuildcommands{"move /Y ..\\..\\bin\\gm_".._SOLUTION_NAME..'_win32.dll "%ProgramFiles(x86)%\\Steam\\steamapps\\common\\GarrysMod\\garrysmod\\lua\\bin\\gmsv_'.._SOLUTION_NAME..'_win32.dll"'}