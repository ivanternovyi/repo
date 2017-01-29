require 'singleton'

class Student
  attr_accessor :age
  include Singleton
end
K = Student.instance
B = Student.instance
K.age = 17
B.age

p B
