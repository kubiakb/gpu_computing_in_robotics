cmake_minimum_required(VERSION 3.17 FATAL_ERROR)
#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/../../cmake")
project(GPU_Computing_in_Robotics_tutorial CXX CUDA)

set(OpenGL_GL_PREFERENCE LEGACY)
set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/install)

#find_package(CUDA 11.6 REQUIRED)
#find_package(CUDADevice 7.5 REQUIRED)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CUDA_ARCHITECTURES 75)


find_package(CUDAToolkit)
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
find_package(PCL 1.5 REQUIRED)
find_package(OpenCV 4.7 REQUIRED)



set_directory_properties( PROPERTIES COMPILE_DEFINITIONS "" )



#include_directories(include)
include_directories(${PCL_INCLUDE_DIRS})
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_definitions(${PCL_DEFINITIONS})

set(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} ${CUDADEVICE_NVCC_FLAGS} -Xptxas -v")


# file(GLOB children RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
# foreach(child ${children})
#   message(${child})
#   if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${child})
#     if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${child}/CMakeLists.txt)
#       add_subdirectory(${child})
#       message("Add lesson: " ${child})
#     endif()
#   endif()
# endforeach()

add_subdirectory(lesson_0)
add_subdirectory(lesson_1)
add_subdirectory(lesson_2)
add_subdirectory(lesson_3)
add_subdirectory(lesson_4)
add_subdirectory(lesson_5)
add_subdirectory(lesson_6)
add_subdirectory(lesson_7)
add_subdirectory(lesson_8)
add_subdirectory(lesson_9)
add_subdirectory(lesson_10)
add_subdirectory(lesson_11)
add_subdirectory(lesson_12)
add_subdirectory(lesson_13)
add_subdirectory(lesson_14)
add_subdirectory(lesson_15)
add_subdirectory(lesson_16)
add_subdirectory(lesson_17)
#add_subdirectory(lesson_18)
add_subdirectory(lesson_19)


#add_executable(lesson_0
#	src/lesson_0_main.cpp
#	src/cudaWrapper.cpp
#	src/lesson_0.cu
#)
#target_link_libraries(lesson_0
#	${OPENGL_LIBRARIES}
#	${GLUT_LIBRARIES}
#	${PCL_LIBRARIES}
#)
