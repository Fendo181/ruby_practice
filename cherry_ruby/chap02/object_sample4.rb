a = 'hello'
b = 'hello'
c = b

def m!(d)
  d.upcase!
end

puts a
puts b
puts c

m!(c)

puts a
puts b #HELLO
puts c #HELLO
