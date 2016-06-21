#クラス
#クラスメソッド=クラスから直接呼び出せるメソッド(インスタンス変数を呼び出さなくて良い。)
#クラス定数=(一文字が大文字)個々のインスタンスではなくインスタンス全てで値を共有することができます。

class User
    
    #@@がクラス変数
    @@count = 0 #初期化
    
    def initialize(name)
        @@count += 1
        @name = name
    end
    
    def sayHi
        puts "Hi! i am #{@name}"
    end
    
    #クラスメソッド①
    def self.sayHo
        puts "Say Ho!"
        puts "Count is #{@@count} insyatance"
    end
    
        
    #クラスで定数①
    VERSION = "これはクラス定数です。" #これもクラス外からアクセスできる。

end

#インスタンスを使わずにメソッドを呼び出します。


tom = User.new("tom")
bob = User.new("bob")
steave = User.new("Steave")

#クラスメソッド呼び出し
User.sayHo

#クラス定数呼び出し
puts User::VERSION
