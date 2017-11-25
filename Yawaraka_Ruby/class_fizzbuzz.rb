def fizzbuzz(n)
  (1..n).each do |i|
    out = ""
    if(i % 3).zero?
      out = "Fizz"
    end
    # 3で割り切れなかったら何も入ってないので
    # out = ""+"Buzz"
    # 3でも5でも割り切れたら
    # out = "Fizz"+"Buzz
    if(i % 5).zero?
      out += "Buzz"
    end
    out = i.to_s if out.empty?
      puts out
  end
end

fizzbuzz(100)
