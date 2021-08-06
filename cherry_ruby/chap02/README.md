## Rubyの基礎を理解する

### メソッド呼び出し

```md
オブジェクト.メソッド(引数1,引数2,引数3)
```

また引数の`()`は省略しても良い。

```ruby 
オブジェクト.メソッド 引数1,引数2,引数3 
```

### コメント

```
=begin
複数行コメントが入れられます。
=end

# 1行コメント
```

### 識別子と予約後

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

### 空白文字

空白文字は識別子や予約語を区切るために使われますが、いくつ連続しても違いはない。
また演算子は前後に空白文字がなくても正常に解釈される事が多い。

### リテラル

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
