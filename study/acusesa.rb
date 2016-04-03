#アクセサ

class User
    
    def initialize(name)
        @name = name
    end
    
    #外部からアクセスをするメソッドを用意する。

    #これを自動化させるの!?
=begin
    #getter
    def name
        return @name
    end
    
    #setter
    def setName(newName)
        @name = newName
    end
=end
    
    #getter と setterを両方生成した
    #attr_accessor :name
    #attr_reader :name #getter
    attr_writer :name #setter
    
    
    
    

    def sayHi #インスタンスメソッド
        puts "hello name is #{@name}!!"+"これはインスタンスメソッドです"
    end
    

    
end


#インスタンス生成
tom =User.new("Tom")
bob =User.new("Bob")
tom.sayHi()
bob.sayHi()

p bob.name
bob.sayHi()
#bob.setName('Tom')
bob.name = 'Yam'
bob.sayHi()



