class User #最は大文字は
    
    #インスタンス時に呼ばれる処理
    
    #アクセッサ(セッター　ゲッター)でインスタンス変数にアクセスする。
    attr_accessor :name
    
    #以下の二つの動作をやってくれる。
    # setter : name =(value) (値を設定するメソッドの方を)
    # getter : name (値を取得する方法を)
    
    
    #ゲッターのみ
    # attr_reader :name
   
    #インスス時に呼び出される
    def initialize(name) #仮引数に"endo"を入れる
        #インスタンス変数(インスタンス内で保持する事ができる。)
        @name =name
    end
    
    
    
    #@nameはこのインスタンス(クラス?)内ではどこでも利用できる。
    
    def sayHi
        # self(メソッド)
        puts "Hi! i am #{@name}"
        
        puts "hi! i am #{self.name}"
        puts "hi! i am "{name}
    end
    
end


#インスタンスを生成する。
#tomはインスタンスオブジェクトです。

tom=User.new("endo")
tom.sayHi #レシーバ

#アクセサで別の変数呼び出し
tom.name="Endo Jr"
tom.sayHi

bob=User.new("bob")
#sayHiめそっど呼び出し
bob.sayHi


