puts 10
puts(-2)
puts 1.52
puts(-1.32)

puts 1/2 # 0 整数同士の割り算は整数になる
puts 1.0/2.0 # 0.5

puts 1.to_f # 1.0
n = 1
puts n.to_f/2 # 0.5

# 演算子の優先順位
puts 2 * 3 + 4 * 5 - 6 / 2 # 23
puts 2 * (3 + 4) * (5 - 6) / 2 #-7

# 変数に格納された数値の増減
puts n = 1
puts n += 1
puts n += 1
puts n -= 1
