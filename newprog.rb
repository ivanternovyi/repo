square = "Some shape"

sum =0

[1,2,3,4].each do |value; square|
  square = value*value
  sum+=square
end
#puts sum
#puts square
def n_times
  yield
  yield
end
#n_times {puts "Hello, bro!"}
#p ["H", "A", "L"].collect {|x| x.succ}
def sort_arr(arr)
  i=0
  while i != 5
    if arr[i-1].to_i <= arr[i].to_i or i==0
      i=i+1
    end
    if arr[i-1].to_i > arr[i].to_i
      arr[i-1], arr[i] = arr[i], arr[i-1]
      i=i-1
    end
  end
end
arr = []
i=0
while i != 6
  arr[i] = gets.to_i
  i=i+1
end
sort_arr(arr)
puts "Array: #{arr.inspect}"
#puts arr////////////////////////////////////////////////////////////////
class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "Person`s name is #{@name}"
  end
end

p = Person.new("Ivan")
puts p
