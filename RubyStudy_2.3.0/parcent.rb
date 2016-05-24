# %
#

name="endo"

puts "hello#{name} !"+"なますて"
#""で囲んだ事と同じ評価になる
puts %Q(hello#{name}!)+%Q(なますて)

#''で囲んだ頃と同じ評価になる。
puts 'hell #{name}'
puts %q(hello #{name})

#パーセント記法は""や''を文字列で表わしたい時に使う

puts "\"\"は文字列ですが特殊文字を評価します"
puts %Q(""は文字列ですが特殊文字を評価します)


