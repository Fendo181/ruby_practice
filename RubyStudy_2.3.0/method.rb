def sayHi(name) #引数は,区切りで複数与えられる
    puts "#(name) hi!endo" #()は引数を展開できない。
end


sayHi("taguchi")
#sayHi Error デファルト値があるからErrorが起きる

#デフォルト値を設定する事ができる、

def sayHo(name="endo")
    puts "#{name} ho yo! Fuck!"
end

sayHo("takahashi")
sayHo #デファルト値があるからErrorが起きない


#文字列を返してもらうだけ
def sayHei(name)
    #score =80 #ローカル変数(このメソッド内でしか有効じゃない)
    #"Hey #{name}"
    #明示的に返してほしいなら
    return "Hey #{name}"
end

puts sayHei("endo")
