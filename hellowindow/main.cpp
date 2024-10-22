#include <iostream>

#include <stdio.h>
#include <stdlib.h>
#include <glad/glad.h>

#include <GLFW/glfw3.h>
GLFWwindow* window;

void framebuffer_size_callback(GLFWwindow* window, int width, int height);  
void processInput(GLFWwindow *window);

int main( void )
{
	// Initialize GLFW
	if( !glfwInit() )
	{
		fprintf( stderr, "Failed to initialize GLFW\n" );
		getchar();
		return -1;
	}
    //  MSAA use for multisampling- each pixel will be sampled 4 times.
	glfwWindowHint(GLFW_SAMPLES, 4);
    //glxinfo | grep "OpenGL version" -> verion 3.3
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make macOS happy; should not be needed
    // used in GLFW to specify which OpenGL profile to create the context for when you create a window.
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Open a window and create its OpenGL context
    // height 800
    // width 600
    // name Hellowindow
	window = glfwCreateWindow( 1920, 1080, "HelloWindow", NULL, NULL);
	if( window == NULL ){
		fprintf( stderr, "Failed to open GLFW window\n" );
		getchar();
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);

	// load the address of the OpenGL function pointers
	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
	{
		std::cout << "Failed to initialize GLAD" << std::endl;
		return -1;
	}  
	//We have to tell OpenGL the size of the rendering window to OpenGL
	glViewport(0, 0, 800, 600);
	glfwSetFramebufferSizeCallback(window, framebuffer_size_callback); 
	 //that keeps on running until we tell GLFW to stop.
	while(!glfwWindowShouldClose(window))
	{
		//input
		processInput(window);
		// rendering commands here
		glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);
		//used to render to during this render iteration and show it as output to the screen.
		glfwSwapBuffers(window);
		//checks if any events are triggered (like keyboard input or mouse movement events), updates the window state.
		glfwPollEvents();    
	}
	//clean/delete all of GLFW's resources
	glfwTerminate();
	return 0;
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}
void processInput(GLFWwindow *window)
{
    if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
}