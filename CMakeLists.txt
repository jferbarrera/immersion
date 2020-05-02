# minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0)
project(immersionAR LANGUAGES CXX C)

# cmake coding rules
# http://docs.ros.org/jade/api/catkin/html/user_guide/standards.html

# add to cmake directory a path
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/CMake)

# include general configuration
include(CMake/global_config.cmake)
set_output_path()

# include general macros
include(CMake/immersion_macros.cmake)
config_cxx_flags()

# add sub projects
include(CMake/immersion_options.cmake)

# include os specific macros
# macro definition located at "CMake/global_config.cmake"
include(CMake/include_os.cmake)

# set os specific configuration flags
# macro definition located at "CMake/<OS>_config.cmake"
os_set_flags()


