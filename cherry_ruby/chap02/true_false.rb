if 0
  puts true
else
  puts false
end

data = 'find_data'
if data != nil
  puts 'データがあります'
else
  puts 'データがありません'
end

not_data = nil
if not_data
  puts 'データがあります'
else
  puts 'データがありません'
end

# 論理演算子

t1 = true
t2 = true
f1 = false
f2 = false

puts t1 && t2 || f1 && f2 # true
puts true || false # true

puts t1 && (t2 || f1) && f2 # false
puts true || false # true
puts true && (true || false) && false # false
