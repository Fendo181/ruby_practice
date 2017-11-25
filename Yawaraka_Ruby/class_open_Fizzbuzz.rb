class Integer
  def to_fizzbuzz
    (1..self).each do |i|
      out = ""
      if (i % 3).zero?
        out = "Fizz"
      end
      if (i % 5).zero?
        out += "Buzz"
      end
      out = i.to_s if out.empty?
      puts out
    end
  end
end

puts 100.to_fizzbuzz
