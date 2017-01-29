module Mod
    def greet
    #  puts "Hello, #{self}"
    end
end

obj = "bro"
obj.extend Mod
obj.greet

class Person < Struct.new(:name, :age)
  def to_s
  #  puts "Name is #{self.name}, age is #{self.age}"
  end
end
man = Person.new("Ivan", 17)
man.to_s

"cat".instance_eval do
#puts "Upper case = #{upcase}"
#puts "Length is #{length}"
end

class MyClass
end

MyClass.instance_eval do
  def out
    puts "out"
  end
end


a = Complex(1, 2)
b = Complex(3, 6)
ObjectSpace.each_object(Complex){|x| puts x}


r = 1..10
list = r.methods
puts r.instance_variable_defined?(:@w)
puts r.respond_to?(:sort)
puts r.kind_of? Object
p Kernel.ancestors



trane = "cat".method(:size)
p trane.call


def double(a)
  2*a
end

method_obj = method(:double)
p [1,2,3].map(&method_obj)
