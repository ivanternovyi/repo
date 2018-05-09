require 'prime'

class RSA
  def initialize(p, q)
    raise ArgumentError, 'P or Q is not prime' unless p.prime? && q.prime?
    @p = p
    @q = q
  end

  def encrypt(data)
    res = ''
    data.each_char do |ch|
      res += ((ch.ord**generate_keys[:e]) % generate_keys[:n]).chr
    end
    res
  end

  def decrypt(encrypted_data)
    res = ''
    encrypted_data.each_char do |ch|
      res += ((ch.ord**generate_keys[:d]) % generate_keys[:n]).chr
    end
    res
  end

  def generate_keys
    n = @p * @q
    phi = (@p - 1) * (@q - 1)
    e = find_coprime(phi, 3)
    d = calc_d(e)
    { n: n, e: e, d: d }
  end

  private

  def gcd(a, b)
    b.zero? ? a : gcd(b, a % b)
  end

  def extended_gcd(a, b)
    return [0, 1] if (a % b).zero?
    x, y = extended_gcd(b, a % b)
    [y, x - y * (a / b)]
  end

  def calc_d(e)
    t = (@p - 1) * (@q - 1)
    x, _y = extended_gcd(e, t)
    x += t if x < 0
    x
  end

  def find_coprime(a, z)
    return z if gcd(a, z) == 1
    find_coprime(a, z + 1)
  end
end


msg = 'RSA in action in order to test it.'
obj = RSA.new(7, 17)
puts "Keys: #{obj.generate_keys}"
puts msg
puts encrypted = obj.encrypt(msg)
puts obj.decrypt(encrypted)
