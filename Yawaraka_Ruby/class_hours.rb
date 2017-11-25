schedule = %w[秒 分 時 月 年 曜日 年内通算日 夏時間 タイムゾーン]
time = Time.now
ary = time.to_a

index = 0

ary.each do | i|
  print(schedule[index] , ":",i,"\n")
    if i == 3
        i = "hogehoge"
    end
  index += 1
end
