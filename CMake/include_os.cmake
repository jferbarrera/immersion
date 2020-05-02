if(ANDROID_NDK_TOOLCHAIN_INCLUDED)
   # include(CMake/android_config.cmake)
   message(WARNING "Android is not supported")
elseif (WIN32)
   # include(CMake/windows_config.cmake)
   message(WARNING "WIN32 is not supported")
else()
   include(CMake/unix_config.cmake)
endif()