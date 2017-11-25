class Animal
end

#継承
class Mammle < Animal
  def swimmable?
    false
  end
end
#module

module Swimmable
  def swimmable?
    true
  end
end

class Fish < Animal
  include Swimmable
end

class Dolphin < Mammle
  include Swimmable
end

puts Mammle.new.swimmable?
puts Fish.new.swimmable?
puts Dolphin.new.swimmable?
