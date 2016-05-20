# 実行回数の入力
print "実行回数を入力してください : "
FIZZBUZZ_COUNT = gets.to_i

# FIZZBUZZ_COUNTの数だけ繰り返し
1.upto(FIZZBUZZ_COUNT) do |fizzbuzz_count_time|
  # 15で割り切れたら"FizzBuzz"と出力
  if fizzbuzz_count_time % 15 == 0
    print "FizzBuzz"

  # 5で割り切れたら"Buzz"と出力  
  elsif fizzbuzz_count_time % 5 == 0
    print "Buzz"

  # 3で割り切れたら"Fizz"と出力  
  elsif fizzbuzz_count_time % 3 == 0
    print "Fizz"

  # 3でも5でも15でも割り切れたらその数をそのまま出力  
  else
    print "#{fizzbuzz_count_time}"
  end

  # スペースを表示
  print " "
end
