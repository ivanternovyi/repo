
def divisors_of(number)
  divisors = []
  n = 1
  while n <= number ** 0.5
    if number.modulo(n) == 0
      divisors << n
      divisors << number / n unless number / n == n
    end
    n += 1
  end
  divisors.sort
end

def prime? n
  return if n.to_i < 2
  (2..Math.sqrt(n)).none? {|f| n % f == 0}
end

print "Input digit: "
digit = gets.chomp
loop do
 break if digit.to_i > 0 && digit == digit.to_i.to_s 
 puts "Retry!"
 digit = gets.chomp
end

print "#{digit} is a prime digit!\n" if prime?(digit.to_i)
print "Divisors: "
divisors_of(digit.to_i).each {|a| print a.to_s + ' '} if !prime?(digit.to_i)
print "\n"

