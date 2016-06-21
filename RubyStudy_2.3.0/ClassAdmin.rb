#継承クラスについて

class User
    

    
    def initialize(name)
     
        @name = name
    end
    
    def sayHi
        puts "Hi! i am #{@name}"
    end
    
end

#User:親クラス,Super Class
#AdminUser:子クラス,sub Class
#継承クラスを作る(<)する。
#継承クラスは親クラスのメソッドや変数を使える。

#子やクラス
class AdminUser < User
    
    def sayHo
        #親クラスの変数をそのまま使える。
        puts "ho! from #{@name}"
    end
    
    #親クラスのメソッドの上書きをするOverride
    def sayHi
        puts "Hi! Yo! "
    end
    
    
end

#あくまでここで呼び出しているのは子クラス(継承のみ)
#従って優先されるのは継承クラスでoverrideされたメソッドのみ

tom =AdminUser.new("tom")

tom.sayHi
tom.sayHo

