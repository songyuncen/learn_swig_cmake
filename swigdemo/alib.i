
%module alib

%{
#include "alib/alib.h"
%}

namespace alib {

class Tuple {
 public:
  Tuple(const char *name);
  ~Tuple();
  
  const std::string &name() const;
  void set_i(int i);
  int i() const; 
};


class Object {
 public:
  Object(const char *name);
  ~Object();

  int i();
  void set_i(int i);
};

}
