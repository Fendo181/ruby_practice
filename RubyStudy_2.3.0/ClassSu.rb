=begin
アクセス権

public
protected
private:レシーバを指定できない。 セキュリティー対策

###
例外として、new したときに呼ばれる initialize メソッドと、クラスの外に書いたメソッドは自動的に private になるので、覚えておきましょう。
###

Ruby の private 指定は他の言語のオブジェクト指向プログラミングと動作が異なっていて、Sub Class から呼び出せたり、オーバーライドすることができたりするので、十分注意して使う


=end


class User
    
    def sayHi
        puts "hi1"
        puts "ここは親クラス内のメソッドです!"
        sayPrivate
        #意味的には self.sayPrivate なのですが、private 
        #ではレシーバーを指定できないので必ず self は省略してあげて
        #sayPrivate のように書いてあげてください。
        
    end
    
    private#クラス内ならば使える
        def sayPrivate
            puts "これはプライドメソッドです。"
        end

end

##クラスが継承されるのでprivateメソッドは子クラス内で呼び出すことが可能。

class AdminUser < User
    
    def sayHo
        puts "hello!これは継承クラス内のメソッドです!"
        sayPrivate #privateメソッド
    end
    
    #なおかつ同名のメソッドの上書きも可能となる。
    
    def sayPrivate
        puts "privateメソッドをOverrideした"
        puts "private from Admnin"
    end
    

    
end

#User.new.sayPrivace NG privareアクセス権かかっているので

User.new.sayHi #こここで始めてprivateメソッドが呼ばれる。
AdminUser.new.sayHo

#over rideの呼び出し
AdminUser.new.sayPrivate

