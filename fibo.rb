def fibo_up_to(max)
  i1, i2 =1, 1
  while i1<=max
    yield i1
    i1, i2 = i2, i1 + i2
  end
  puts ""
end
#fibo_up_to(100) {|p| print p, " "}
ARGV.each { |chr| p chr  }
p ENV['RYBULIB']
