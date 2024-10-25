 Graphics cards of today have thousands of small processing cores to quickly process your data within the graphics pipeline. The processing cores run small programs on the GPU for each step of the pipeline. These small programs are called shaders.

 As input to the graphics pipeline we pass in a list of three 3D coordinates that should form a triangle in an array here called Vertex Data; this vertex data is a collection of vertices. A vertex is a collection of data per 3D coordinate.

 A single vertex ->  [vertex shader] -> a collection of vertices -> [geometry shader] -> a primitive shape -> [primitive assembly] -> stage takes as input all the vertices -> [rasterization stage] ->  mapped the resulting primitive(s) -> [fragment shader ] ->  calculated the final color of a pixel -> [alpha test and blending stage] -> object

 We are required to define at least a vertex and fragment shader of our own

VBO and VAO:
    VBO (Vertex Buffer Object): Stores vertex data.
    VAO (Vertex Array Object): Manages how OpenGL reads data from the VBO.
    EBO Element Buffer Objects
Shaders: Programs that run on the GPU. The main types are:

    Vertex Shader: Processes vertex data.
    Fragment Shader: Handles the color of pixels.
GLSL: GL Shader Language