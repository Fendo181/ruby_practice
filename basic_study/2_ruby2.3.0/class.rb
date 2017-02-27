class User
	def initialize(name)
		#外から受け取った引数をインスタンスへんすに入れる。
		@name =name
	end

	def sayHi
		puts "Hi i am #{@name}"
	end
end

tom= User.new("tom")
tom.sayHi
endo= User.new("endo")
endo.sayHi
