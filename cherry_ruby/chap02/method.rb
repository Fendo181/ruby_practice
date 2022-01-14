def add(a,b)
    a+b
end
puts add(1,2)

# メソッド名も変数名もスネークケースで書く
# キャメルケース(PHPではよく使う)ではかかない
# メソッド名の最初の文字に_(アンダースコア)も使えます

def hello_world
    puts "HelloWorld!"
end
hello_world()

