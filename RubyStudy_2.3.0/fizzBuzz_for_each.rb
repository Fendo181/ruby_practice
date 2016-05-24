

#for文でFizz Buzz問題
#
#
#for i in 1..30
#  
#    if i%15==0
#        puts "FizzBuzz!"
#    elsif i%3==0
#        puts "Fizz!"
#    elsif i%5==0 
#        puts "Buzz!"
#    else
#        puts i
#    end
#    
#end

#eachメソッドで記述する。
#
#(1..30).each do |i|
#    
# 
#    if i%15==0
#        puts "FizzBuzz!"
#    elsif i%3==0
#        puts "Fizz!"
#    elsif i%5==0 
#        puts "Buzz!"
#    else
#        puts i
#    end
#    
#end

#
#1.upto(30) do |i|
#    
#    if i%15==0
#        puts "FizzBuzz!"
#    elsif i%3==0
#        puts "Fizz!"
#    elsif i%5==0 
#        puts "Buzz!"
#    else
#        puts i
#    end
#    
#end



#while文

i=1
while i <=30 
    
    if i%15==0
        puts "FizzBuzz!"
    elsif i%3==0
        puts "Fizz!"
    elsif i%5==0 
        puts "Buzz!"
    else
        puts i
    end
    
    i +=1
end




