puts ''.empty? # true
puts 'abc'.empty? # false

# 引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at') # true
puts 'watch'.include?('att') # false

# ３の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end

puts multiple_of_three?(4) # false
puts multiple_of_three?(5) # true
puts multiple_of_three?(9) # true
