#include "alib/alib.h"

#include <iostream>

using std::cout;
using std::endl;

namespace alib {

Tuple::Tuple(const char *name) : name_(name) {
  cout << "Construct " << name_ << endl;
}

Tuple::~Tuple() { cout << "Destroy " << name_ << endl; }

Object::Object(const char *name) : name_(name) {
  ptr_ = std::make_shared<int>(1);
  cout << "Construct " << name_ << endl;
}

Object::~Object() {
  cout << "Destroy " << name_ << ". Ref = " << ptr_.use_count() << endl;
}

void A(const Tuple &t1, Tuple *t2) {
  cout << "Function A" << endl;
  t2->set_i(2);
  cout << "t2->i() = " << t2->i() << endl;
}

void B(const Tuple &t1, const Object o1, Tuple *t2, Object *o2) {
  cout << "Function B" << endl;
  o2->set_i(3);
  cout << "o2->i() = " << o2->i() << endl;
}

}  // namespace alib

