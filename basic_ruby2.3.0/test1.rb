=begin
%w(小文字) 配列を作る
配列を作る。配列の要素はスペース区切りで指定する。
式の展開はされない。
=end

a=["a","b","c"]
p a
b=%w(a b c) 
p b
#############
=begin
%W(大文字),配列を作る。式の展開がされる。
配列を作る。%w()と違い、式の展開がされる。
=end
apple='red'
banana='yellow'

 #エディターによるとこれがコメントアウトしてる様に見える。
array=%W(#{apple} #{banana} PHP)
    
p array


