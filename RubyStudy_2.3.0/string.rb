
#文字列
#"" 特殊文字　式展開
# ''

price = 1400

#  #{}はさむ事で式が評価される

puts "price #{3000*4}"  #ちゃんと評価される
puts "price {3000*4}" #評価されない
puts 'price #{3000*4}'#そもそも''だから、変数が評価されず展開されない。


name="Endo Futoshi"

puts " Hello My nama is #{name}!"

#文字列でよく使うobj

puts "hello "+"wold"
puts "hello "*3

