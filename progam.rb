print "Input number: "
num = gets.to_i
val = if num == 5
          "Nice"
      else
          "bad"
      end
puts val
print "Input n: "
n = Integer(gets)
n.times do
  puts "Hello!"
end
1.step(11, 2){|s| print s.to_s + " "}
puts
