#ハッシュをArrayがたに変換する。

score = {taguchi:200,
		 endo:300
}


puts "ハッシュとして出力する。"
puts score

#ハッシュを配列として出力する。

puts score.class 
puts "ハッシュクラスとわかる。"

#ハッシュクラスの.to_aを使う"
#配列として表示させられる。
puts score.to_a

#配列からまたハッシュに戻す
puts score.to_a.to_h





