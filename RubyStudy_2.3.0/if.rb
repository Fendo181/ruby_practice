#userから値を受け取る関数
puts "数値を入力してください!"
score = gets.to_i

#比較
#&&(and) ||(OR) !(NOT)

=begin

if score >80 then
    puts "great!"
elsif score >60
    puts "good!"
else
    puts "so so!.."
end
    
=end

#単純なif分も書ける

puts "great!" if score > 80