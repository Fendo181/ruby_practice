#module
#名前空間

=begin

def movie_encode
    
end
    
def movie_export
end

これらのメソッド名は他の人も使って衝突が起きやすくなる。

=end

#モジュールを使って自分だけの名前空間を作ってあげれば便利!

#これらのメソッド名が他の人が作ったメソッド名や、ライブラリのメソッド名などと衝突しないか心配になってきます。

#Moduleを作ることで名前空間を使う
module Movie
    
    VERSION = 1.1
    
    #クラスメソッドの様に書けばいい
    def self.encode
        puts "encodeing.."
    end
    
    
    def self.export
        puts "exporting.."
    end
end

Movie.encode
Movie.export

puts Movie::VERSION


#別のモジュールを作る(名前空間的な)
module Movie2
    
    VERSION = 1.1
    
    #クラスメソッドの様に書けばいい
    def self.encode
        puts "encodeing.."
    end
    
    
    def self.export
        puts "exporting.."
    end
end

Movie2.encode
Movie2.export

puts Movie2::VERSION
