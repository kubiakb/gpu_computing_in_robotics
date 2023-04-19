include_directories(include)
get_filename_component(LessonName ${CMAKE_CURRENT_LIST_DIR} NAME)

file(GLOB SRC_FILES src/*.cpp src/*.cu)
message(${SRC_FILES})

add_executable(${LessonName}
    ${SRC_FILES}
)
target_link_libraries(${LessonName}
	${OPENGL_LIBRARIES}
	${GLUT_LIBRARIES}
	${PCL_LIBRARIES}
	${OpenCV_LIBS}
	CUDA::cublas
	CUDA::cusolver
)

install(TARGETS ${LessonName} DESTINATION ${CMAKE_INSTALL_PREFIX})
