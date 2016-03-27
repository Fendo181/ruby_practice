#はじめてのRuby

##__""データを表示する。__  ★
````
print  "hello world!" 終わった後に改行がない
puts "hello world" 改行がある
p "hello world(p)" データの形式がわかるように表示する。
````



###_長いコメント_
````
>
=begin
コメント
コメント
=end
````

##__変数と定数を使ってみよう!__

- 変数　:データにつける
  - (小文字から始まる)
- 定数　:変更されないデータになる。
  - (全て大文字となるABCDEGG) 
  - ###_大文字から始まれば定数_

````
msg = "Hello world"
p msg;
````

###_定数は上書きができない!_

````
ADMIN_EMAIL ="endo@yahoo.co.jp"  
ADMIN_EMAIL ="endo@yahoo.co.jp"  //erroが図れる
````

##__Rubyにおけオブジェクト、メソッド、クラ__★★

- "データ(ocject)=色々な便利な命令が詰まった__データ型__であると認識して下さい!_  
-  メソッド(クラスで定義されている。!)
  - __objectの設計図__  
- "文字列 -String Class_  


p "hello world"
####”helloworld"という文字列はデータ型であってつまりは、__オブジェクト__であります。
↓
- ###_つまりはオブジェクトなので、沢山の命令が使えます!!(!?????)_
- ###_文字列(hello worldみたいな)オブジェクト(データ)を扱う場合は -String Classで定義されていメソッドを使う事ができます!!_
- ###_数値object= Numeric クラス_
````
x=10 #100_000_000
y=20.5
z=1/3r Rational(1,3)　//対応していない!
````

##数値記号__+ - *  / % **__

````
p x%3 #1
p x**3 #1000
p z*2 #2/3
````

###_自己代入!_
````
x= x+5  
x += 5
````

__もちろん数値もオブジェクトなので便利なメソッドを使えます!__


p y.round(四捨五入)　★


##__文字列オブジェクトをやろう!!__ ★

name="tgutiti"

- ###_""で囲む文字列object_
  - 変数展開,特殊文字_
  
````
x="hello world #{name}=taguche"  
````

###_''で書き込むと文字列oobject  _
````
y ='hell world #{name}'  
````

##__メソッド__　★★★
###_!と?の違いとは_

- ! 破壊的メソッド  
- ? 真偽値を返すメソッド true false  

s ="tagutch"

###_一般的な(表示をするときだけ大文字にする)_
````
puts s.upcase
````
###_(sを上書きして書き換えたりする!!)_
````
puts s.upcase!
````

###_オブジェクトが入っているか確認する_
###_真偽値を返して欲しい時は?をつける。_
````
s=""
p s.empty? #true
````


##__配列オブジェクト(1)__

````
sales =[1,2,3]
sales[0]=10
p sales[0] #1
````

###_配列の範囲指定 ★_
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

###_配列object (2)_ ★★★
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
p sales .size
p sales.sort
p sales.sort.reverse #メソッドはピリオドでつなげていく
````

###_pushは配列の末尾に要素を付け加える★_
````
p sales.push(100);
````

pushのショートカット
salesの末尾100と120を入れる



##__hashオブジェクト__ ★★

>
ハッシュとは
複数の値を管理できる+識別子を追加できる。

- ###_1  ""でシンボルオブジェクト_
````
sales = {"taguchi" =>200,"endo"=>300,"tanaka"=>400}
p sales["endo"]
````
- ###_2 キーが文字列の場合でシンボルオブジェクト(識別子)[推奨]_
````
sales = {:taguchi =>200,:endo=>300,:tanaka=>400}
p sales[:endo]
````

- ###_3  シンボル名　:でハッシュが出来る(Ruby 1.9から)_　★
````
sales = {taguchi: 200,endo: 300,tanaka :400}
p sales[:endo]
````

###_hashクラスを見て下さい_
````
p sales.size #要素数
p sales.key "キー
p sales.value 
p sales.has_key?(:endo)
````


###_オブジェクトを変換してみよう_　★

````
a=10;  
b="5";  
p a+b #Errorが起きる  

````

###_文字列を数字として扱いたい_
````
p a+b.to_i #15  (整数)(int)
p a+b.to_f #15.0 (実数)(float)
````
###_数字を文字列として扱いたい_文字列 (string)_
````
p a.to_s+b #105
````

###_Hashと配列を総合変換する。_★★

````

(型変換)

h={taguchi: 100,Endo: 200}

p h.to_a #配列に直す(to Array)
↓
[[taguchi: 100],[Endo: 200]

p h.to_a.to_h #ハッシュに直す(to Hash)
↓
[[taguchi: 100],[Endo: 200]

````


##__％記法__

>
""をわざわざ書かなくてよい
````
s="hello"
s=%(hello) ★(推奨)
S=%Q(hello) == %Q{hello}
p s
````

s='hello'


###_%配列記法(""を書かなくてよい!)_

''''
a=["a","b","c"]  
↓
a =%W(a b c) ★★　で書ける。 
p a

a='a,'b','c']  
↓
a =%w(a b c) ★★　で書ける。 
p a
''''

##__if文の条件分岐__


if 条件
    真
else
    偽
end

score = 80;

if (score > 60)
    puts "ok";
else if score >40
    puts "SOSO"
else
    pus "NG!"

###_if文を後ろから書く_

score = 50;
puts "OK" if score >60



##__真偽値と条件演算子__
if x == True (Trueが省略されている。)
    puts ""
end

=begin

true : それ以外(0,""を含む)
false : false nil(オブジェクトが存在しない)

=end

if 条件
    a=b
else
    a=c
    
###_条件演算子_★★

a=条件?b:c　★★ 一行でif文elseを掛ける.

a=10
c =20

a=b>c?:b:c (1行でif文)
puts a; (#20)

###_多重代入_
b,c = 10.20



##__case文で条件分岐__

あるobjectを振り分ける

````
signal ="red"

case 比較したいオブジェクト
when "red"
    "stop!"
when "green","blue"(複数の値を指定する)
    "go..!"
when "yellow"
    "Caution"
else
    puts wrong singnal!
    
````

##__繰り返し処理__

###_timeメソッド_

````
3.times do |i|
    puts "#{i}:hello"
end
````

0:hello  
1:hello  
2:hello  8

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
3.times do |i|
    if i == 1
        break
    end
    puts "#{i}: hello"
end


- nexe:ループを1回スキップ
- _i==1の時に1をスキップする。_

3.times do |i|
    if i == 1
        next
    end
    puts "#{i}: hello"
end


##__繰り返し処理(2) for,each文__

- for文
````
for i in 0..2 do (0から2までの範囲=(0,1,2)=3回回す)
    puts i
end
```

  - 配列書き換えてみる
  

````
    for coloer in ["red","blue","pink"] do
    puts coloer
    end
````

red  
blue  
pink  

- eaccメソッドの方が配列は使いやすい
````
["red","blue","pink"].each do |color|
    puts coler
end
````

  - eachメソッドで{Hash}を扱う
  ````
  {"red"=>200,"blue"=.300,"pink"=>50}.each do |color,price|
    puts "#{coloer}: #{price}"
end
  ````












