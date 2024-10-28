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


add_executable(hellotriangle_dm1 ./hellotriangle/demo1.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellotriangle_dm1 PRIVATE  include)

target_link_libraries(hellotriangle_dm1
	${ALL_LIBS}
)

add_executable(hellotriangle_dm2 ./hellotriangle/demo2.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellotriangle_dm2 PRIVATE  include)

target_link_libraries(hellotriangle_dm2
	${ALL_LIBS}
)

add_executable(hellotriangle_dm3 ./hellotriangle/demo3.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(hellotriangle_dm3 PRIVATE  include)

target_link_libraries(hellotriangle_dm3
	${ALL_LIBS}
)

add_executable(shader_dm1 ./shader/demo1.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(shader_dm1 PRIVATE  include)

target_link_libraries(shader_dm1
	${ALL_LIBS}
)


add_executable(shader_dm2 ./shader/demo2.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(shader_dm2 PRIVATE  include)

target_link_libraries(shader_dm2
	${ALL_LIBS}
)

add_executable(shader_dm3 ./shader/demo3.cpp ./src/glad.c)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(shader_dm3 PRIVATE  include)

target_link_libraries(shader_dm3
	${ALL_LIBS}
)

add_executable(shader_main ./shader/main.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(shader_main PRIVATE  include)

target_link_libraries(shader_main
	${ALL_LIBS}
)

add_executable(textures_dm1 ./textures/demo1.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_dm1 PRIVATE  include)

target_link_libraries(textures_dm1
	${ALL_LIBS}
)

add_executable(textures_dm2 ./textures/demo2.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_dm2 PRIVATE  include)

target_link_libraries(textures_dm2
	${ALL_LIBS}
)

add_executable(textures_ex1 ./textures/ex1.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_ex1 PRIVATE  include)

target_link_libraries(textures_ex1
	${ALL_LIBS}
)

add_executable(textures_ex2 ./textures/ex2.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_ex2 PRIVATE  include)

target_link_libraries(textures_ex2
	${ALL_LIBS}
)


add_executable(textures_ex3 ./textures/ex3.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_ex3 PRIVATE  include)

target_link_libraries(textures_ex3
	${ALL_LIBS}
)

add_executable(textures_ex4 ./textures/ex4.cpp ./src/glad.c ./src/shader.cpp)
find_package(glfw3 3.3 REQUIRED)

target_include_directories(textures_ex4 PRIVATE  include)

target_link_libraries(textures_ex4
	${ALL_LIBS}
)