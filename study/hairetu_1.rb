sales =["apple","banana","paine"]

#p sales[0]
#p sales[0..2]
#p sales[0...2]

#範囲指定

#p sales[-1] #最後の所
#p sales[0,2] #1から2まで

p sales
sales[0]="Edno"
p sales

sales =["apple","banana","paine"]
sales[0..2]=["takasho","rftgyhu"]
p sales


#配列の中に更に配列が入る状態
sales =["apple","banana","paine"]
sales[0]=["endo","tayaha","rftgyhu"]
p sales


#配列の中にちゃんと組み込まれている
sales =["apple","banana","paine"]
sales[1,0]=["endo","rftgy","tgyhuj","hyujik"]
p sales
