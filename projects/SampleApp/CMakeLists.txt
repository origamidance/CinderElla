cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
include("../../cmake/CinderElla.cmake")
set(SOURCES
		src/SampleApp.cpp)
project( SampleApp)
ci_make_app(
		SOURCES     ${SOURCES}
		CINDER_PATH ${CINDER_PATH}
)
