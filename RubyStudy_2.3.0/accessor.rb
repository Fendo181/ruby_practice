class Book
    
    #アクセサ(getter+setter)
    attr_accessor :title,:price
    
    def initialize(title,price)
        #@の名前は一致させる
        @title=title; @price=price;
    end
    
    def sayPrice
        puts "Price is #{@price}"
        #self演算子
        puts "price is #{self.price}"
        #self演算子の省略
        puts "price is #{price}"
    end
    
end


#def sayHi(price_def){
#    puts "#Price is #{price_def}"
#    }

#アクセッサーを用いたメソッド呼び出し
    
book = Book.new("EndoBook",2389)#インスタンス生成
puts book.title
puts "#{book.price}円"

book.sayPrice

#インスタンス変数の名前を変えずに値を変えたい時にアクセッサが便利
book.title="TakahashiBooks"
book.price=2050

puts book.title
book.sayPrice

#別の名前にしたい
book_bob=Book.new("BobBobAdventure",1980)
puts book_bob.title
puts book_bob.price

book_bob.sayPrice

#インスタンス変数bookのタイトル名はこれで固定された
puts  book.title

    
    #アクセッ
    
#initializeを用いたメソッド呼び出し。
#book=Book.new(200)
#book.sayPrice

##一般的なメソッド呼び出し
#sayHi("500")
