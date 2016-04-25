#配列オブジェクト
a=[]
#Rubyにおいて値はすべてオブジェクトですし、変数は全て値への参照です。
b=a

a.push(1)
b.push(2)
a.push(3)
b.push(4)

p a
p b