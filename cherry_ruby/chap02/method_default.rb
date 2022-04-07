# frozen_string_literal: true

# デフォルトを設定する
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは！'
  else
    'Hello!'
  end
end

# 引数が少ない
puts greet
# 引受がある
puts greet('japan')
# 引数が多い
puts greet('us')
