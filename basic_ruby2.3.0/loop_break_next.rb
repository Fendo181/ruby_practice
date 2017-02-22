#i=0
#
##繰り返すのみ
#loop do 
#    p i
#    
#    i +=1
#    
#    if i==100 then
#        break;
#    end
#end

#break loopを抜ける
#nexr 一回だけ処理をスキップする。

1..10.times do |i|
    
    #7の時に抜ける
    if i==7 then
        next
    end
        
    p i
end