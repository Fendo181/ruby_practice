n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

country = 'japan'
if country == 'japan'
  puts 'こんにちは!'
elsif country == 'italy'
  puts 'Ciao'
elsif country == 'us'
  puts 'Hello'
end

#Rubyのif文は最後に評価された式を戻り値と返す性質があります。
country = 'japan'
greeting =
  if country == 'japan'
   'こんにちは!'
 elsif country == 'italy'
   'Ciao'
 elsif country == 'us'
   'Hello'
  end

puts greeting #こんにちは

country = 'hoge'
greeting =
  if country == 'japan'
    'こんにちは!'
  end

puts greeting #nil


point = 7
day = 1
if day == 1
  point *= 5
end
puts point #35

# 後置if
point = 7
day = 1
point *= 5 if day == 1
puts point

#thenを入れた場合
country = 'italy'
greeting = if country == 'japan' then 'こんにちは'
  elsif country == 'us' then 'Hello'
  elsif country == 'italy' then 'Ciao'
  else '???'
end
puts greeting