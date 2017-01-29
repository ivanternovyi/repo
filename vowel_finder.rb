class VowelFinder
  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
      @string.scan(/[aeiou]/) do |vowel|
        yield vowel
      end
  end
end

vf = VowelFinder.new("the quick brown fox jumped")
p vf.inject(:+)



module Summable
  def sum
    inject(:+)
  end
end

class Array
  include Summable
end

class Range
  include Summable
end

require_relative "vowel_finder"
class VowelFinder
  include Summable
end

[1,2,3,4,5].sum
('a'..'q').sum

vf = VowelFinder.new("the quick brown fox jumped")
p vf.sum

car_age = gets.to_f
case car_age
when 0..3
  puts "New"
when 3..10
  puts "old"
when 12
  puts "Rozval"
else
  puts "Car"
end
