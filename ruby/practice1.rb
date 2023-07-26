# 関数を定義：部分式の値を計算
def calculate_partial_expression(n)
  (n*(n+1))/(n+2.0)
end

# 全体の式を計算
def calculate_whole_expression
  total_sum = 0.0
  n = 1

  while n <= 12343
    total_sum += calculate_partial_expression(n)
    n += 3
  end

  total_sum
end

# 小数部を切り捨てて整数値を求める
result = calculate_whole_expression.floor

puts result