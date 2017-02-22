# case分chomp

signal=gets.chomp#最後の改行コードを取り除く(?)


#case分は具体的な文字列でわける時に使う    
case signal
    
when "red" then
    puts "stop!"
when "green","blue" then
    puts "go!"
when "yellow" then
    puts "caution!"
else
    puts "wrong signal!"
    
end #最後はendで占める