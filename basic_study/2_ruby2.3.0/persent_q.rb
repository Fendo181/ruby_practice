name="endo"

puts "hello#{name} !"+"なますて"
#""で囲んだ事と同じ評価になる
puts %Q(hello#{name}!)+%Q(なますて)

#''で囲んだ頃と同じ評価になる。
puts 'hell #{name}'
puts %q(hello #{name})
