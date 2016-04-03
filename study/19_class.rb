#クラス(設計図)
#メソッド
#インスタンス(=クラスから作られるオブジェクトを)


class User
    
    @@count = 0
    
    #インスタンスが作られる時の初期化処理
    def initialize(name)#nameにTomが入る
        #インスタンス変数
        @name =name #インスタンス変数
        @@count += 1
    end
    
    def sayHi #インスタンスメソッド
        puts "hello name is #{@name}!!"+"これはインスタンスメソッドです"
    end
    
    def User.sayHello #クラスメソッド
        puts "hello  From User class(#{@@count} Users)"+"これはクラスメソッドです"
    end
    
    
end
User.sayHello

#インスタンス生成
tom =User.new("Tom")
bob =User.new("Bob")
tom.sayHi()
bob.sayHi()

#クラスメソッドからオブジェクトを生成
User.sayHello()

class SuperUser < User
    
    def Shout
        puts "hello!!!!! from #{@name}"+"これは継承クラスです!"
        
    end
end

tom = User.new("Tom")
bob = SuperUser.new("Bob")

tom.sayHi()
bob.sayHi()
bob.Shout()

