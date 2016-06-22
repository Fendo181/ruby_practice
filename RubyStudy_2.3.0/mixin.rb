#modlue
#ミックスイン
=begin
モジュールでself をつけずに単にインスタンスメソッドにしてあげると、それを他のクラスのインスタンスメソッドとしてはめ込むことができたりします。
=end

module Debug
    
    def info
        puts "#{self.class} debug"
    end
end

class Player
    #ミックスイン
    include Debug
end

class Monster
    #ミックイン
    include Debug
end


Player.new.info
Monster.new.info
=begin

ミックスインのメインの機能として
継承関係にない複数のクラスに共通の機能を提供する場合に便利である!

module+Class
=end