cmake_minimum_required(VERSION 3.5.0)
project(openGL VERSION 0.1.0 LANGUAGES C CXX)
#	-lGL -lGLU -lXrandr -lXext -lX11 -lrt -lglut -lGL -lGLU -lglfw 

set(OPENGL_LIBRARY
${OPENGL_LIBRARY}
	-lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl
)
set(ALL_LIBS
	${OPENGL_LIBRARY}
	glfw
	GLEW
	)
add_executable(hellowindow ./hellowindow/main.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellowindow PRIVATE  include)

target_link_libraries(hellowindow
	${ALL_LIBS}
)

add_executable(hellotriangle ./hellotriangle/main.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellotriangle PRIVATE  include)

target_link_libraries(hellotriangle
	${ALL_LIBS}
)

add_executable(hellotriangle_ex ./hellotriangle/exercise.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellotriangle_ex PRIVATE  include)

target_link_libraries(hellotriangle_ex
	${ALL_LIBS}
)

