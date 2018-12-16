set(CINDERELLA ON)

option(USE_CCACHE "using ccache" ON)
option(USE_ZAPCC "using zapcc" OFF)
option(USE_COTIRE "using cotire" OFF)
if (USE_CCACHE)
# Configure CCache if available
find_program(CCACHE_FOUND ccache)
if(CCACHE_FOUND)
        set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
        set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
        set(ENV{CCACHE_SLOPPINESS} "pch_defines,time_macros")
endif(CCACHE_FOUND)
endif (USE_CCACHE)

if (USE_COTIRE)
    include(cotire)
endif (USE_COTIRE)

if (USE_ZAPCC)
    SET(CMAKE_C_COMPILER /home/origamidance/dependencies/zapcc/build/bin/zapcc)
    SET(CMAKE_CXX_COMPILER /home/origamidance/dependencies/zapcc/build/bin/zapcc++)
endif (USE_ZAPCC)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../Cinder" ABSOLUTE )
# get_filename_component( CINDER_PATH "/home/origamidance/Playground/Cinder" ABSOLUTE )
get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/../blocks" ABSOLUTE )
include( "${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )
include_directories("${CMAKE_CURRENT_LIST_DIR}/../external/Eigen")
