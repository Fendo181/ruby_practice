#クラスメソッド
class Dog
  class << self
    
    def print_info(name)
      dog = new(name)
      puts dog.info
    end
  end
end
