cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
include("../../cmake/CinderElla.cmake")
set(SOURCES
		src/WindowToWorldTestApp.cpp)
project( WindowToWorldTestApp)
ci_make_app(
		SOURCES     ${SOURCES}
		CINDER_PATH ${CINDER_PATH}
)

