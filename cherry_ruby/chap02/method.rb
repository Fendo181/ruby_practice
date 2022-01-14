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


def greet(country)
    return 'countryを入力してください' if country.nil?
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'Hello'
    elsif country == 'italy'
        'Ciao'
    else '???'
  end
end

puts greet('japan') #こんにちは
puts greet('us') #Hello
puts greet(nil) #countryを入力してください

