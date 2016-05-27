#Ruby文法

##__データを表示する。__  
````
print  "hello world!" 終わった後に改行がない
puts "hello world" 改行がある
p "hello world(p)" データの形式がわかるように表示する。
````

##__便利なコマンド__
`irb`  
[インタラクティブにRubyを記述できる。exitで向ける]

`ri`  
[知りたい命令とかオブジェクトを見る qで抜ける]




###_長いコメント_
````
>
=begin
コメント
コメント
=end
````

##__変数と定数の違い__

- 変数　:データにつける
  - (小文字から始まる)
- 定数　:変更されないデータになる。
  - (全て大文字となるABCDEGG) 
  - ###_大文字から始まれば定数_

````
msg = "Hello world"
p msg;
````

###_定数は~~上書きができない!~~上書きできるが警告がでる_

_つまりは使わないほうがいい_

````
ADMIN_EMAIL ="endo@yahoo.co.jp"  
ADMIN_EMAIL ="endo@yahoo.co.jp"  //怒られる
````

##__Rubyにおけオブジェクト、メソッド、クラス__

- "データ(ocject)=色々な便利な命令が詰まった__データ型__であると認識する 
-  メソッド(クラスで定義されている。!)
  - __objectの設計図__  
- 文字列 String Class  

したがってRubyはオブジェクトに適するクラスとそのメソッドを書いていくことでRubyが上達すると考える。

"Hello wold".lengthはinstance("Heloo wold").Method(length)と理解する。

(例)
__”helloworld"とは文字列のデータ型であると同時に文字列のオブジェクトでもある__

- _文字列(hello worldみたいな)オブジェクト(データ)を扱う場合は -String Classで定義されていメソッドを使う事ができます!!_

どのオブジェクトの属していて、どんな関数(メソッド)を使えるのか

```
1 #数値
2 #32 4.8
3
4 #このobjがどんなクラスに属しているのか
5 p 4.8.class
6
7 #このobjがどんなmethodを使えるのか
8 p 3.8.methods

```

結果

```
Float
[:%, :*, :+, :-, :/, :<, :>, :-@, :**, :<=>, :<=, :>=, :==,
:===, :eql?, :inspect, :to_int, :to_s, :to_i, :to_f, :hash,
:coerce, :divmod, :fdiv, :modulo, :abs, :magnitude, :zero?,
:floor, :ceil, :round, :truncate, :positive?, :negative?,
:quo, :nan?, :infinite?, :finite?, :next_float, :prev_float,
:to_r, :numerator, :denominator, :rationalize, :arg, :angle,
:phase, :+@, :singleton_method_added, :div, :i, :remainder,
:real?, :integer?, :nonzero?, :step, :rectangular, :rect,
:polar, :real, :imaginary, :imag, :abs2, :conjugate, :conj,
:to_c, :between?, :instance_of?, :public_send,
:instance_variable_get, :instance_variable_set,
:instance_variable_defined?, :remove_instance_variable,
:private_methods, :kind_of?, :instance_variables, :tap,
:singleton_method, :is_a?, :define_singleton_method,
:extend, :method, :public_method, :to_enum, :enum_for, :=~,
:!~, :respond_to?, :freeze, :display, :object_id, :send,
:nil?, :class, :singleton_class, :clone, :dup, :itself,
:taint, :tainted?, :untaint, :untrust, :trust, :untrusted?,
:methods, :protected_methods, :frozen?, :public_methods,
:singleton_methods, :!, :!=, :__send__, :equal?,
:instance_eval, :instance_exec, :__id__]




```


##数値記号__+ - *  / % **__

````
p x%3 #1
p x**3 #1000
p z*2 #2/3
````

Float型の例
```
 11 #5分の2
 12 puts Rational(2,5)
 13 puts 2/5r
 14
 15 #Floatクラス
 16
 17 p 52.6.round#四捨五入
 18 p 52.6.floor#小数点以下切り捨て
 19 p 52.6.ceil #小数点以上、切り上げ


```


##__自己代入!__
````
x= x+5  
x += 5
````

__もちろん数値もオブジェクトなので便利なメソッドを使えます!__


p y.round(四捨五入)　




##__文字列オブジェクト__ 
- _""で囲む文字列object_
  - 変数展開,特殊文字が浸かる
-  ''で囲む文字列object
  - 変数展開はできない。
- `#{}`で変数の中身が評価される。


練習コード
```
price = 1400
#  #{}はさむ事で式が評価される
puts "price #{3000*4}"  #ちゃんと評価される
puts "price {3000*4}" #評価されない
puts 'price #{3000*4}'#そもそも''だから、変数が評価されず展開されない。

name="Endo Futoshi"
puts " Hello My nama is #{name}!"

#文字列でよく使うオブジェクトメソッド

puts "hello "+"wold"
puts "hello "*3

```

実行結果

```
price 12000
price {3000*4}
price #{3000*4}
 Hello My nama is Endo Futoshi!
hello wold
hello hello hello


```



##__!と?がついたメソッド__

- ! 破壊的メソッド  
  - `upcase`  文字列を大きくして返す。
  - `upcase!`  文字列を大きくして、元の文字列も書き換える。

練習コード

```
#!=破壊的メソッド

name="endo"

puts name.upcase
puts name

puts name.upcase!
puts name


```

実行結果
```
ENDO
endo
ENDO
ENDO
```


- ? 真偽値を返すメソッド true false  

練習コード

```
#?真偽値オブジェクト
p name.empty? #返却値はtrue か false 今回はFalse
p name.include?("e") #false なぜなら破壊されているから
p name.include?("E")

```
実行結果
```
false
false
true

```




##__配列オブジェクト(1)__

````
sales =[1,2,3]
sales[0]=10
p sales[0] #1
p sales[5] #nil =何もない
````

###_配列の範囲指定_
````
p sales[0..2] # 0 1 2 (0~2以上)
p sales[0...2] #0 1のみ (0~2未満)
````

###_最後の要素を指定する_
````
p sales[-1]
````

###_1番目から2個分とってきます_
````
p sales[1 ,2]
````

##__配列オブジェクト(2)__ 
###_Array クラスに記述済み_
###_置き換える_
````
sales = [5,8,4]
sales[0...2] = [1,2] //置き換え #0から2未満(0,1)
````

###_追加する_
````
sales[1,0]=[10,11,12] #添字の1から0個分=sales[1]の部分から[10,11,12]を追加する。
````
###_要素を削除する。_
````
sales[0,2]=[] #0から2未満なのでsalse[0],sales[1]が空になる。
````


###_メソッド_
`````
p sales .size #要素の数
p sales.sort #ソートする。
p sales.sort.reverse #メソッドはピリオドでつなげていく
````

###pushメソッド
pushは配列の末尾に要素を付け加える
````
sales.push("100")
sales << "silver" #pushと同じ　よく使う
```

##__hashオブジェクト__ 

key/value

>
ハッシュとは
複数の値を管理できる+識別子を追加できる。

- `""`でシンボルオブジェクト
````
sales = {"taguchi" =>200,"endo"=>300,"tanaka"=>400}
p sales["endo"]
````
- キーが文字列の場合でシンボルオブジェクト(識別子)[推奨]
````
sales = {:taguchi =>200,:endo=>300,:tanaka=>400}
p sales[:endo]
````

- シンボル名　:でハッシュが出来る(Ruby 1.9から)
````
sales = {taguchi: 200,endo: 300,tanaka :400}
p sales[:endo]
````

###__hashオブジェクト__
````
p sales.size #要素数
p sales.key "キー
p sales.value 
p sales.has_key?(:endo)
````

練習コード

```
=begin

#ハッシュオブジェクトを創る
scores_1={
		"endo"=>200,
		"takahasihi"=>400
}

#シンボルで書く(動作が高速である)

scores_2={
		:taguchi =>200,
		:watanabe => 150
}
=end

#シンボルで書く(簡略版)
scores_3={
		iida: 200,
		saeki: 320
}

p scores_3[:iida]
p scores_3[:saeki]

scores_3[:iida]=600
scores_3[:iida]

p scores_3.size
p scores_3.keys
p scores_3.values #中に値があるか確認する。
p scores_3.has_key?(:iida)
```

実行結果

```
200
320
2
[:iida, :saeki]
[600, 320]
true

```


###_オブジェクトを相互に変換してみよう_　

````
a=10;  
b="5";  
````

```
p a+b`
#Errorが起きる  

```


###_文字列を数字として扱いたい_
````
a=10 #数値
b="5" #文字列

p a+b.to_i #15  (整数)(int)
p a+b.to_f #15.0 (実数)(float)
````
###_数字を文字列として扱いたい_文字列 (string)_
````
a=10 #数値
b="5" #文字列
p a.to_s+b #105
````

##__Hashと配列を総合変換する。__

練習コード
```
#ハッシュをArrayがたに変換する。

score = {taguchi:200,
		 endo:300
}


puts "ハッシュとして出力する。"
puts score

#ハッシュを配列として出力する。

puts score.class 
puts "ハッシュクラスとわかる。"

#ハッシュクラスの.to_aを使う"
#配列として表示させられる。
puts score.to_a

#配列からまたハッシュに戻す
puts score.to_a.to_h

```


実行結果
```
ハッシュとして出力する。
{:taguchi=>200, :endo=>300}
Hash
ハッシュクラスとわかる。
taguchi
200
endo
300
{:taguchi=>200, :endo=>300}

```


````

h={taguchi: 100,Endo: 200}

p h.to_a #配列に直す(to Array)
↓
[[taguchi: 100],[Endo: 200]

p h.to_a.to_h #ハッシュに直す(to Hash)
↓
[[taguchi: 100],[Endo: 200]

````


##__％記法__

練習コード

```
name="endo"

puts "hello#{name} !"+"なますて"
#""で囲んだ事と同じ評価になる
puts %Q(hello#{name}!)+%Q(なますて)

#''で囲んだ頃と同じ評価になる。
puts 'hell #{name}'
puts %q(hello #{name})

```

実行結果

```
helloendo !なますて
helloendo!なますて
hell #{name}
hello #{name}

```

%記法は""や''などを表わしたいときに使う。
練習コード

```
puts "\"\"は文字列ですが特殊文字を評価します"
puts %Q(""は文字列ですが特殊文字を評価します)

```

実行結果
```
""は文字列ですが特殊文字を評価します
""は文字列ですが特殊文字を評価します

```


##__%配列記法__

````
a=["a","b","c"]  
↓
a =%W(a b c)
p a

a=['a,'b','c']  
↓
a =%w(a b c) 
p a
`````

##__書式付きで文字列に値を埋め込む__
>"文字列" %値

- %S 文字列
- %d 整数
- $f 浮動小数点

練習コード

```
# 文字列 %s
# 整数　%d
# 浮動小数 %f

p "name: %s" % "taguchi"
#10桁分の幅を開ける
p "name: %10s" % "taguchi"
#10桁を幅を空けつつ左寄せ(-を入れる)にする。
p"name: %-10s" % "taguchi"

#10.3fは小数点前が10桁、小数点以下が3桁という意味
#05dは5桁にしたいが、5桁にみたない場合は0を入れてくれという意味
p "id: %05d, rate: %10.3f:" %[355,3.84]

#これが2fだから小数点以下は2桁となる。
p "id: %05d, rate: %10.2f:" %[355,3.84]

# printf 書式付きで文字列を表示できる。
# sprintf 文字列を返すだけ

printf("name: %10s \n","endo")
printf("id:%05d, rate:%10.2f \n",355,3.284)

#文字列を返す。
p sprintf("id:%05d, rate:%10.2f \n",355,3.284)
```

実行結果

```
"name: taguchi"
"name:    taguchi"
"name: taguchi   "
"id: 00355, rate:      3.840:"
"id: 00355, rate:       3.84:"
name:       endo
id:00355, rate:      3.28
"id:00355, rate:      3.28 \n"

```


##__if文の条件分岐__

````
if 条件
    真
else
    偽
end
````

###_elsif文を書く_
````
score = 80;

if (score > 60)
    puts "ok";
else if score >40
    puts "SOSO"
else
    pus "NG!"
````

###_if文を後ろから書く_

````
score = 50;
puts "OK" if score >60
````



##__真偽値と条件演算子__
````
if x == True (Trueが省略されている。)
    puts ""
end
````


- true : それ以外(0,""を含む)
- false : false nil(オブジェクトが存在しない)

````

if 条件
    a=b
else
    a=c

````

###_条件演算子_★★

###_a=条件?b:c　一行でif文elseを掛ける_

````
a=10
c =20

a=b>c?:b:c (1行でif文)
puts a; (#20)
````

###_多重代入_
b,c = 10.20



##__case文で条件分岐__

練習コード

```
# case分chomp

signal=gets.chomp#最後の改行コードを取り除く(?)


#case分は具体的な文字列でわける時に使う    
case signal
    
when "red" then
    puts "stop!"
when "green","blue" then
    puts "go!"
when "yellow" then
    puts "caution!"
else
    puts "wrong signal!"
    
end #最後はendで占める

```

実行結果

```
[vagrant@localhost RubyStudy_2.3.0]$ ruby case.rb
red
stop!
[vagrant@localhost RubyStudy_2.3.0]$ ruby case.rb
bllue
wrong signal!
[vagrant@localhost RubyStudy_2.3.0]$ ruby case.rb
blue
go!


```

##__繰り返し処理__

###_timeメソッド_


timesメソッドを使ってFizzBuzz問題

[Qiitaに記事上げました](http://qiita.com/Fendo181/items/425293e8e638d7fd7cea)


練習コード
```
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
```


実行結果
```
0
1
2
Fizz!
4
Buzz!
Fizz!
7
8
Fizz!
Buzz!
11
Fizz!
13
14
FizzBuzz!
16
17
Fizz!
19
Buzz!
Fizz!
22
23
Fizz!
Buzz!
26
Fizz!
28
29
FizzBuzz!

```



一行でtimesメソッドを書く


```
j=0
10.times{ |j| puts "#{j}:hello" }

```

実行結果

```
0:hello
1:hello
2:hello
3:hello
4:hello
5:hello
6:hello
7:hello
8:hello
9:hello
```
###__timesを使うと必ず0から始まるので、そこだけ注意して下さい!__

###_while文__

````
i=0
while i < 3 do
    puts "#{i} hello"
    #i =i+1
    i +=1
    
end
````

###_roopから抜ける処理_

- break文:roopを抜けます

- _1の時にループを抜ける_
````
3.times do |i|
    if i == 1
        break
    end
    puts "#{i}: hello"
end
````


- nexe:ループを1回スキップ
- _i==1の時に1をスキップする。_
````
3.times do |i|
    if i == 1
        next
    end
    puts "#{i}: hello"
end
````


##__繰り返し処理(2) for,each文__


練習コード
```
#for
#inにはobjectが入る

for i in 18..20 do #doは省略できる
    p i
end

puts %q(15..20は"15から20まで"を表わす)

for i in 18...20 do 
    p i
end

puts %q(15...20は"15から20以下"を表わす)

for color in ["red","blue"] do
    p color
end


for name,score in {taguchi:200,end:400} do
    puts "#{name}: #{score}"
end


#forは内部でeach文を使っている。

puts "eachメソッドで書いてみる。"

(18..20).each do |i| #times関数っぽい
    p i
end

#配列
["red","blue"].each do |color|
    p color
end


#Hash変数

{taguchi:200,end:400}.each do |name,score|
    puts "#{name}: #{score}"
end

```

実行結果

```
18
19
20
15..20は"15から20まで"を表わす
18
19
15...20は"15から20以下"を表わす
"red"
"blue"
taguchi: 200
end: 400
eachメソッドで書いてみる。
18
19
20
"red"
"blue"
taguchi: 200
end: 400

```

##__メソッドを作ってみる。__















