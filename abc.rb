def ten_times
  10.times do |i|
    if yield(i)
      #puts "i like number: #{i}"
    end
  end
end

ten_times do |num|
  true if num == 9 || num == 3
end

def meth
  block = lambda {return 99}
  puts "Called #{block.call}"
end
meth
