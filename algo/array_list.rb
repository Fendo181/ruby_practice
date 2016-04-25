#Rubyで連結リストの実装
class Element
    attr_accessor :date, :next_ref
    
    def initialize(date,next_ref)
        @date =date
        @next_ref=next_ref
    end
end


#リストを組み立てる
a=Element.new(1,'apple')
b=Element.new(2,'banana')
c=Element.new(3,'peache')
d=Element.new(4,'orange')

#先頭要素からすべての要素にアクセス
p a.date
p a.next_ref


