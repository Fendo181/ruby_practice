#while

=begin

i=0


while i<10 do
    puts "hello"
    
    #i=i+1 省略系
    i +=1
end
=end

#times 回数が決まっているときにとても便利であり。

#FizzBuzz問題
i=0

#0から30まで繰り返す
31.times do |i|
    
    if (i%15==0 && i!=0)
        puts "FizzBuzz!"
    elsif(i%3==0 && i!=0)
        puts "Fizz!"
    elsif(i%5==0 && i!=0)
        puts "Buzz!"
    else
        puts "#{i}"
    end
    
        
        
end

#番外偏 1行で表示する。

j=0

10.times{ |j| puts "#{j}:hello" }