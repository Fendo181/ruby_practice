#for
#inにはobjectが入る

for i in 18..20 do #doは省略できる
    p i
end

puts %q(15..20は"15から20まで"を表わす)

for i in 18...20 do 
    p i
end

puts %q(15...20は"15から20以下"を表わす)

for color in ["red","blue"] do
    p color
end


for name,score in {taguchi:200,end:400} do
    puts "#{name}: #{score}"
end


#forは内部でeach文を使っている。

(18..20).each do |i| #times関数っぽい
    p i
end

#配列
["red","blue"].each do |color|
    p color
end


#Hash変数

{taguchi:200,end:400}.each do |name,score|
    puts "#{name}: #{score}"
end

