#ifndef SHADER_HPP
#define SHARDER_HPP
#include <iostream>
#include <fstream>
#include <string>

typedef enum {
    LINK,
    COMPILE
}type_t;

class Shader{
    public:
        Shader(const char * path_to_vertex,const char * path_to_frangment );
        unsigned int ID;
        void use();
        void setBool(const std::string &name, bool value) const;
        void setInt(const std::string &name, int value) const;
        void setFloat(const std::string &name, float value) const;
    private:
        void checkErrors(unsigned int sharder, type_t type);

};

#endif