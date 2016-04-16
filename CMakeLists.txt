cmake_minimum_required(VERSION 2.8)

project( SightReader )

# url: http://stackoverflow.com/questions/10851247/how-to-activate-c-11-in-cmake
ADD_DEFINITIONS(
    -std=c++11 # Or -std=c++0x
    # Other flags
)

find_package( OpenCV REQUIRED )

add_executable( SightReader src/main.cpp )

target_link_libraries( SightReader 
	${OpenCV_LIBS} 
	)

MESSAGE(STATUS "OpenCV_LIBS: " ${OpenCV_LIBS})
