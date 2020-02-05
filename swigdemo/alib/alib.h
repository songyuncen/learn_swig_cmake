#pragma once

#include <memory>
#include <string>

namespace alib {

class Tuple {
 public:
  Tuple(const char *name);
  ~Tuple();

  const std::string &name() const { return name_; }
  void set_i(int i) { i_ = i; }
  int i() const { return i_; }

 private:
  std::string name_;
  int i_;
};

class Object {
 public:
  Object(const char *name);
  ~Object();

  int i() { return *ptr_; }
  void set_i(int i) { *ptr_ = i; }

 private:
  std::string name_;
  std::shared_ptr<int> ptr_;
};

void A(const Tuple &t1, Tuple *t2);
void B(const Tuple &t1, const Object o1, Tuple *t2, Object *o2);

}  // namespace alib

