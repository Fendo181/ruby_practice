## Chap02 Rubyの基礎を理解する

### 2.2 Rubyに関する基礎知識

#### メソッド呼び出し

```md
オブジェクト.メソッド(引数1,引数2,引数3)
```

また引数の`()`は省略しても良い。

```ruby 
オブジェクト.メソッド 引数1,引数2,引数3 
```

#### コメント

```
=begin
複数行コメントが入れられます。
=end

# 1行コメント
```

#### 識別子と予約後

変数やクラス、メソッドなどにつける名前の事を識別子と言います。
Rubyの識別子は英数字やアンダースコアが使われています。漢字なども識別子として使う事ができます。

また、Rubyには予約語があります。
予約語は識別子として使う事ができません。厳密には使う方法もあるのですが、避けたほうが良いです。
主な予約語

```ruby
BEGIN    class    ensure   nil      self     when
END      def      false    not      super    while
alias    defined? for      or       then     yield
and      do       if       redo     true     __LINE__
begin    else     in       rescue   undef    __FILE__
break    elsif    module   retry    unless   __ENCODING__
case     end      next     return   until
```

#### 空白文字

空白文字は識別子や予約語を区切るために使われますが、いくつ連続しても違いはない。
また演算子は前後に空白文字がなくても正常に解釈される事が多い。

#### リテラル

ソースコードに直接値を埋め込みができる値を、`リテラル`と呼びます。

```ruby
# 数値
123

# 文字列
"Hello, world!"

# 配列
[1,2,3]

# ハッシュ
{'japan' =>'yen','us'=>'dollar'} 

#正規表現
/\d+-\d/
```
####　変数の宣言と式の代入

```sh
変数名 = 式や値
```

サンプル

```rb
s = 'Hello'
n = 123 * 2
```

ちなみに、変数を宣言する目的で書くとエラーが出るのでなんらかの値や式を入れて上げる必要がある。
変数名は慣習として 小文字の**スネークケース**で書きます。
PHPで使われているような `キャメルケース`は使わない。
また数字から始まる変数名の宣言もできないです。

```rb
special_price = 200
```

Rubyの場合は変数が特定の型に制限する事がない為、同じ変数に文字列や数値を自由に代入する事ができる。

```rb
x = 'Hello'
x = 123
x = 'Good-bye'
```

以下のように2つの値を同時に代入する事もできます。

```rb
# ２つの値を同時に代入する
a,b = 10,100
puts a,b

# 右辺の数が少ない(そもそもない)場合はnilが入る
c,d = 10
puts c,d

# 右辺の数が多い場合、はみ出した値が切り捨てられる
e,f = 100,200,300
puts e,f

# 2つの変数に同じ値を代入する
a = b = 100
puts a,b
```

### 2.3 文字列

シングルクォーテーション(`'`)で囲むと、文字列がそのまま出力される。
ダブルクオーテーション(`"`)で囲むと変数や改行コードなどがそのまま展開される。

```rb
puts 'こんにちは!\n'
puts "こんにちは! \n さようなら"

# 実行結果
こんにちは!\n
こんにちは!
さようなら
```

文字列内で変数展開を行う場合は `#{}`で囲ってあげる。

```rb
# 変数展開
message = 'おはよう!'
puts "#{message}";

i = 10;
puts "#{i}は16進数にすると#{i.to_s(16)}です"
```

`+`を使うことで文字列を連結する事ができる


```rb
name1 = 'endo'
name2 = 'futoshi'
puts name1 + name2 #endofutoshi
```

#### 文字列の比較

```rb
puts 'ruby' == 'ruby' #true
puts 'ruby' == 'Ruby' #false
puts 'ruby' == 'perl' #false
puts 'ruby' != 'ruby' #false
```

### 2.4 数値

整数同士の割り算は整数になる。少数以下が必要になる場合はどちらかを少数にする。
`to_f`メソッドを加える事で整数から少数になる

```rb
puts 10
puts -2
puts 1.52
puts -1.32

puts 1/2 #0 整数同士の割り算は整数になる
puts 1.0/2.0 # 0.5
```

#### 演算子による比較

```rb
puts 1<2  #true
puts 1<=2 #true
puts 1>2  #false
puts 1>=2 #false

puts 1==2 #false
puts 1 == 1 #true
puts 1 != 2 #true
```

演算子の優先順位については `*`と`/`は`+`、`-`よりも優先される。
なので`()`を使って優先順位を変更する事ができる。

#### 変数に格納された数値の増減

Rubyには他の言語に備わっているよな`++`や`--`がない。
その代わりに`+=`と`-=`が加わっている。

### 2.5 真偽値と条件分岐

Rubyでは以下のルールで真偽値を判定しています。

- `false`または`nil`であれば偽
- それ以外全ては真

※なので`nil`は偽になるが`0`はtrueになるのが注意

```rb
if 0
    puts true 
else 
    puts false
end
# true 
```

#### 倫理演算子

```ruby
t1 = true
t2 = true
f1 = false
f2 = false

puts t1 && t2 || f1 && f2 # true
puts true || false # true
```

`&&`の優先順位は`||`よりも高い。もし優先順位を変えたい場合は`()`を使う。
また`!`演算子を使うと真偽値を反転させる事ができる。

```ruby
puts t1 && (t2||f1) && f2 #false
puts true||false #true
puts true && (true||false) && false #false
```


#### if文

Rubyのif文は最後に評価された式を戻り値と返す性質があります。

```ruby
country = 'japan'

greeting =
  if country == 'japan'
   'こんにちは!'
 elsif country == 'italy'
   'Ciao'
 elsif country == 'us'
   'Hello'
  end

puts greeting #こんにちは
```

`else節`がなく、なおかつどこにも条件がかぶってない場合は`nil`が返ってきます。
※`false`ではないです。

```ruby
country = 'hoge'
greeting =
  if country == 'japan'
    'こんにちは!'
  end

puts greeting #nil
```

Rubyのif文は修飾子として文の後ろに置く事ができます。この場合のifは「後値if」と呼ばれる事があります。

一般的なif

```ruby
point = 7
day = 1
if day == 1
  point *= 5
end
puts point #35
```

後値if

```ruby
point = 7
day = 1
point *= 5 if day == 1
puts point
```

また、if文には`then`を入れると、次のように条件式とその条件が真の場合の処理を1行に押し込める事ができる。 

```rb
country = 'italy'
greeting = if country == 'japan' then 'こんにちは'
  elsif country == 'us' then 'Hello'
  elsif country == 'italy' then 'Ciao'
  else '???'
end
puts greeting
```

### 2.6　メソッドの定義

```rb
def メソッド名(引数1,引数2)
end
```

サンプルコードを書くと以下のようになります。

```rb
def add(a,b)
    a+b
end
puts add(1,2)
```
メソッド名も変数名もスネークケースで書きます。キャメルケース(PHPではよく使う)ではかきません。
また、メソッド名の最初の文字に_(アンダースコア)も使えます。

#### メソッドの戻り値

またメソッドの戻り値として`return`を設定する事も出来ますが、Rubyでは最後に評価された式がメソッドの戻り値となるのが特徴です。
returnのようなキーワードは不要です。

```rb
def add(a,b)
    return a+b
end
puts add(1,2)
```

なのでreturnを使わずに以下のようにコードがかけます。
`return`はメソッドを途中で脱出する場合に使われる事が多い。 

```rb
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
```

また、引数のないメソッドであれば次のように()を省略できます。

```rb
def greet_no_value
'こんにちは()なし'
end

puts greet_no_value()
```

### 2.8文字列についてもっと詳しく

`%記法`で文字列を作る事ができる

```ruby
#%q! !はシングルクオートで囲んだ事る
puts %q!He said, "Don't speak"!
#%Q! !はダブルクオートで囲んだ事になる
something = "Hello"
puts %Q!He said, "#{something}"!
# 通常
message = 'Hi!'
puts "#{message}"
```

#### ヒアドキュメント

`<<識別子`を設定してヒアドキュメントを定義する事ができる

```ruby
a = <<TEXT
これはヒアドキュメントです
複数行に渡る文字列を作成する事が可能です
TEXT
```
### 2.9 数値についてもっと詳しく

```rb
# 数値のクラスのあれこれ
puts 10.class #Intager
puts 1.5.class #Float

puts 2/3r #有理数リテラル
r = 2/3r
puts r.class #Rational
```

ここで説明した数値クラスに関しては全て`Numeric`クラスのサブクラスにになります。

### 2.10 真偽値と条件分岐についてもっと詳しく

基本的にRubyの場合は左から順に式を評価します。
式全体の真または偽が確定すると式の評価を終了し、最後に評価した式の値を返す仕様になります。
このような式を評価した時点で終了する評価方法をショートサーキットと言います。

```rb
puts 1 && 2 && 3 #3
puts 1 && nil && 3 #nil 
puts 1 && false && 3 #false
puts nil || false #false
puts false || nil #nil
puts nil || false || 2 || 3 #2
```

#### unless文

if文で否定の条件を書いている時は、unless文に置き換えができます

```rb
status = 'erro'
if status != 'ok'
    puts '何か異常があります'
end

status = 'error'
unless status == 'ok'
    puts '何か異常があります'
else
    puts '正常です'
end
```

#### case when文

１つのオブジェクトを複数の値で比較する場合はif文よりもcase文の方で書いたほうがシンプルになります。
他のPHPやJavascriptの`switch case`違い最後にbreak文を書かなくも、次のcase節が処理される事はないです。

```rb
def say_country(country)
  case country
  when 'japan','日本'
    'こんにちは!'
  when 'us','アメリカ'
    'Hello!'
  when 'italy','イタリア'
    'Ciao!'
  else
    '???'
  end
end

puts say_country('日本') # こんにちは!
puts say_country('us') # Hello!
```

#### 条件演算子(三項演算子)

シンプルな`if/else`の場合は三項演算子で置き換えるとシンプルに記述する事ができるようになる

```rb
n = 11
result = if n > 10
  '10より大きい'
else
  '11より大きい'
end
puts result

# 三項演算子で書き換える
n = 11
result =  n > 10 ? '10より大きい' : '11より大きい'
puts result
```

### 2.11 メソッドについてもっと詳しく
デフォルト値付きの引数を設定する。

```
def メソッド(引数 = デフォルト値, 引数2 = デフォルト値2)
end
```

例

```rb
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは！'
  else
    'Hello!'
  end
end

puts greet # こんにちは!
```

#### ?で終わるメソッド

rubyでは?で終わる場合は慣習として真偽値(trueか、false)が返るようになる

```rb
puts ''.empty? #true
puts 'abc'.empty? #false

# 引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at') #true
puts 'watch'.include?('att') #false
```

?で終わるメソッドは自分で定義する事もできます。
返り値として `true` や `false` を返す場合は`?`で終わすようにすれば良い

```rb
# ３の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0 
end

puts multiple_of_three?(4) #false
puts multiple_of_three?(5) #true
puts multiple_of_three?(9) #true
```

#### !で終わるメソッド

`!`で終わるメソッドは、`!`が付いてないメソッドよりも危険という意味を持ちます。`!`で終わるメソッドを使う時は注意が必要です。  
例えば`String`クラスには`upcase`メソッドと`upcase!`メソッドという2つのメソッドがあります。
`upcase`で呼ばれた方は元の変数は変わらないですが、`upcase!`で呼ばれた方は元の値を変更してしまいます。
このように元の値を変更してしまうメソッドを「破壊的メソッド」と呼びます。

```rb
a = 'ruby'

# upcaseだと変数の値aの値は変化しない
puts a.upcase # RUBY
puts a # ruby

puts a.upcase! # RUBY
puts a  # RUBY
```

ここで紹介した`!`や`?`はメソッドでは使えますが、変数名で定義しようとするとエラーが出ます。