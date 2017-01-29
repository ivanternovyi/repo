def say_greetings(name)
  "Hi, "+name+"!"
end
puts "It`s now #{Time.now}"
puts say_greetings('Ivan')
a=[1, "cat", 3.14]
puts "The first element of an array is #{a[0]}"
a[2]="dog"
puts "Array #{a.inspect}"
a = %w{ant dad mum}
puts "Array #{a.inspect}"
inst_section=Hash.new('37')
inst_section={
  'celo' => 'string',
  'ishak' => 'kodib',
  'lolak' => 'strinsdffg',
  'jumlo' => 'strinssg',
  'cjif' => 'strinsfrgrgtgg',
  'qealo' => 'strinhhh',
  'rterelo' => 'SString',
  'cfdfds' => 'stRRRing',
  'celhh' => 'strinGGG',
  'tgtelo' => 'strinffDD'
}

p inst_section['lolak']
p inst_section['celo']
p inst_section['tgreo']
#histogram= Hash.new(0)
#puts histogram['hhhh']

t=Time.now
if t.saturday?
  puts "Saturday"
else
  puts "Cool day today!"
end
square =4
square = square *square while square <160
puts square
