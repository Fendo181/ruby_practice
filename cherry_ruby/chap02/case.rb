def say_country(country)
  case country
  when 'japan','日本'
    'こんにちは!'
  when 'us','アメリカ'
    'Hello!'
  when 'italy','イタリア'
    'Ciao!'
  else
    '???'
  end
end

puts say_country('日本') # こんにちは!
puts say_country('us') # Hello!