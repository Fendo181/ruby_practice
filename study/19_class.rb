#クラス(設計図)
#メソッド
#インスタンス


class User
    
    #インスタンスが作られる時の初期化処理
    def initialize(name)#nameにTomが入る
        #インスタンス変数
        @name =name
    end
    
    def sayHi
        puts "hello mu name ish #{@name}!!"
    end
    
    
end

tom =User.new("Tom")
bob =User.new("Bob")
tom.sayHi()
bob.sayHi()
    