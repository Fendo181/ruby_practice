#関数メソッド

def sayHi(name="endo",name2="Tanaka")
    #puts "hello!"+name
    #puts "hello!"+name2
    
    s="hello!"+name#外からアクセスできない!
    y="hello!"+name2#外からアクセスできない!
    return s,y
end

#("Tom","keyte")#メソッ
#sayHi()


#帰り値を持つのでメソッドの値を代入することができます。

greed=sayHi()

puts greed
#puts s
