

#!=破壊的メソッド

name="endo"

puts name.upcase
puts name

puts name.upcase!
puts name

#?真偽値オブジェクト

p name.empty? #返却値はtrue か false 今回はFalse
p name.include?("e") #false なぜなら破壊されているから
p name.include?("E")
