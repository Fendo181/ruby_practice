specila_price = 200
puts specila_price

# あまり使わない
特別価格 = 100
puts 特別価格

# ２つの値を同時に代入する
a,b = 10,100
puts a,b

# 右辺の数が少ない(そもそもない)場合はnilが入る
c,d = 10
puts c,d

# 右辺の数が多い場合ははみ出した値が切り捨てられる
e,f = 100,200,300
puts e,f

# 2つの変数に同じ値を代入する
a = b = 100
puts a,b