class Dog
  #インスタンス変数
  def initialize(name)
    @name = name
  end

  def info
    "This dog's name is #{@name}"
  end
end

dog = Dog.new("Pocochann")

puts dog.info
