puts 'abc'.class #String

#%q! !はシングルクオートで囲んだ事になる
puts %q!He said, "Don't speak"!
#%Q! !はダブルクオートで囲んだ事になる
something = "Hello"
puts %Q!He said, "#{something}"!
# 通常
message = 'Hi!'
puts "#{message}"

a = <<TEXT
これはヒアドキュメントです
複数行に渡る文字列を作成する事が可能です
TEXT

puts a

# フォーマットを指定して文字列を作成する
puts sprintf('%0.3f',1.2) #1.200
puts sprintf('%0.3f +%0.3f',1.2, 0.38) #1.200 +0.380

