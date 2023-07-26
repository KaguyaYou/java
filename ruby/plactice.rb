# 各桁の和を計算する関数
def digit_sum(number)
  sum = 0
  while number > 0
    sum += number % 10
    number /= 10
  end
  sum
end

# 幸せな整数をカウントする関数
def count_happy_numbers(start, stop)
  count = 0

  (start..stop).each do |num|
    count += 1 if num % digit_sum(num) == 0
  end

  count
end

# 1から9999999までの範囲の幸せな整数を求める
result = count_happy_numbers(1, 9999999)

puts result