#include "shader.hpp"
#include <sstream>
#include <glad/glad.h>

Shader::Shader(const char * path_to_vertex,const char * path_to_frangment ){
    std::ifstream vertex_src(path_to_vertex);
    std::ifstream fragment_src(path_to_frangment);

    if (!vertex_src || !fragment_src )
    {
        std::cout << "Unable to open file" <<std::endl;
        return;
    }
    std::stringstream vt_buf,fm_buf;
    vt_buf << vertex_src.rdbuf();
    fm_buf << fragment_src.rdbuf();
    // close file handlers
    vertex_src.close();
    fragment_src.close();

    std::string vertex_contents = vt_buf.str();
    std::string fragment_contents = fm_buf.str();

    const char * vShaderCode = vertex_contents.c_str();
    const char * fShaderCode = fragment_contents.c_str();
    
    unsigned int vertex, fragment;
    vertex = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex, 1, &vShaderCode, NULL);
    glCompileShader(vertex);
    checkErrors(vertex, COMPILE);

    fragment = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment, 1, &fShaderCode, NULL);
    glCompileShader(fragment);
    checkErrors(fragment, COMPILE);

    this->ID = glCreateProgram();
    glAttachShader(this->ID , vertex);
    glAttachShader(this->ID , fragment);
    glLinkProgram(this->ID );
    checkErrors(this->ID , LINK);

    glDeleteShader(vertex);
    glDeleteShader(fragment);
}
void Shader::use(){
    glUseProgram(this->ID);
}
void Shader::setBool(const std::string &name, bool value) const{
    int vertexColorLocation = glGetUniformLocation(this->ID, name.c_str());
    glUniform1i(vertexColorLocation, (int)value);
}

void Shader::setInt(const std::string &name, int value) const{
    int vertexColorLocation = glGetUniformLocation(this->ID, name.c_str());
    glUniform1i(vertexColorLocation, value);
}

void Shader::setFloat(const std::string &name, float value) const{
    int vertexColorLocation = glGetUniformLocation(this->ID, name.c_str());
    glUniform1f(vertexColorLocation, value);

}

void Shader::checkErrors(unsigned int sharder, type_t type){
    int success;
    char infoLog[512];
    if (type == COMPILE)
    {
        glGetShaderiv(sharder, GL_COMPILE_STATUS, &success);
        if (!success)
        {
            glGetShaderInfoLog(sharder, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::COMPILATION_FAILED\n" << infoLog << std::endl;
        }
    }else{
        // check for linking errors
        glGetProgramiv(sharder, GL_LINK_STATUS, &success);
        if (!success) {
            glGetProgramInfoLog(sharder, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
        }
    }
    
}
