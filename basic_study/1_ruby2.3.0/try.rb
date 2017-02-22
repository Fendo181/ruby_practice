#例外

x=gets.to_i

#自分で例外クラスを作る
class MyError < StandardError; end

#p 100/x #0を入れるとErrorが発生します。
#例外処理の書き方
begin
    if x == 3
        raise MyError #自分が作った例外処理を発生させる
    end
    p 100/x 
#例外クラスで発生したオブジェクトMyErrorを作る。
rescue MyError
        puts "noy 3!"#独自のメッセージを作る
        
rescue => ex #発生した例外をexに入れる。
    p "エラメッセージ"+"#{ex.message}" #予めた用意されたメッセージを表示する
    p "エラー起こしたクラス"+"#{ex.class}" #このオブジェクト名のクラス名
    puts "例外が"+"発生しましたよ!"
    puts "stopped!"
    
ensure#例外が発生しよがしまいが、最後に絶対実行したい処理
    puts " __END__"
end