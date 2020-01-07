set(CINDERELLA ON)

find_package(Boost REQUIRED COMPONENTS system filesystem)

get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../Cinder" ABSOLUTE )
# get_filename_component( CINDER_PATH "/home/origamidance/Playground/Cinder" ABSOLUTE )
get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/../blocks" ABSOLUTE )
include("${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )
include("${CMAKE_CURRENT_LIST_DIR}/modules/cinderMakeLib.cmake")
# include("${CMAKE_CURRENT_LIST_DIR}/modules/cinderMakePythonBinding.cmake")
# include_directories("${CMAKE_CURRENT_LIST_DIR}/../external/Eigen")
