=begin

#ハッシュオブジェクトを創る
scores_1={
		"endo"=>200,
		"takahasihi"=>400
}

#シンボルで書く(動作が高速である)

scores_2={
		:taguchi =>200,
		:watanabe => 150
}
=end

#シンボルで書く(簡略版)
scores_3={
		iida: 200,
		saeki: 320
}

p scores_3[:iida]
p scores_3[:saeki]

scores_3[:iida]=600


scores_3[:iida]

#便利なメソッドもある。

p scores_3.size
p scores_3.keys
p scores_3.values #中に値があるか確認する。
p scores_3.has_key?(:iida)




