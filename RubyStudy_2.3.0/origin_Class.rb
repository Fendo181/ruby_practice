class User
    
    #インスタンス時に呼ばれる
    def initialize(name)
        @name = name
    end
    
    #イニシャライズ変数(@name)を使う
    def sayHi
        puts "hi! #{@name}"
    end
    
end

tom = User.new("tom")
tom.sayHi