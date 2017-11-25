addres = {name: "Jyohn", hight: "186", weight: "34kg"}
addres[:tel] = "111222233"

addres.each do |key,value|
	puts "#{key}: #{value}"
end
