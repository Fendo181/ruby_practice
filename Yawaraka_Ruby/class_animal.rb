class Animal
  def warm_body?
    false
  end
end

# 継承
class Fish < Animal
end

# 継承 上書き
class Mammal < Animal
  def warm_body?
    true
  end
end

# False
puts Fish.new.warm_body?
# True
puts Mammal.new.warm_body?
