# Save the command line compile commands in the build output
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# Set C++ standard directly
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# View the makefile commands during build
#set(CMAKE_VERBOSE_MAKEFILE ON)

# fast compilation
if(ENABLE_CCACHE)
  find_program(CCACHE_FOUND ccache)
  	if(CCACHE_FOUND)
		set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
      	set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
      	message(WARNING "ccache found and enable")
	else()
		message(WARNING "ccache not found")
	endif()
else()
	message("ENABLE_CCACHE is unset")
endif()

macro(set_output_path)
  set(MY_BUILD_DIR ${PROJECT_BINARY_DIR})
  set(MY_BIN_DIR ${PROJECT_BINARY_DIR}/bin)
  set(RUNTIME_OUTPUT_DIRECTORY ${MY_BIN_DIR})

  # cmake directories
  set(MY_SOURCE_DIR ${PROJECT_SOURCE_DIR})  #RELATIVE

  # libs path
  set(MY_LIB_DIR ${PROJECT_BINARY_DIR}/lib)
  set(LIBRARY_OUTPUT_PATH ${MY_LIB_DIR})
  link_directories(${MY_LIB_DIR})

  message(" ----------------------------------------")
  message(" | MY_BIN_DIR = ${MY_BIN_DIR}")
  message(" | MY_LIB_DIR = ${MY_LIB_DIR}")
  message(" | MY_SOURCE_DIR = ${MY_SOURCE_DIR}")
  message(" ----------------------------------------")
endmacro()
