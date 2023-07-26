# 切手の組み合わせで額面の和として表せる金額を全探索する関数
def explore_combinations(stamps, counts, target_value, index, current_sum)
  return 1 if current_sum == target_value
  return 0 if current_sum > target_value || index >= stamps.length

  count = 0
  (0..counts[index]).each do |num_used|
    count += explore_combinations(stamps, counts, target_value, index + 1, current_sum + stamps[index] * num_used)
  end
  count
end

# 切手の額面と枚数を与える
stamps = [205, 82, 30]
counts = [30, 40, 10]
target_value = 10000  # 切手の額面の和の最大値（これ以上の額面の和は求めない）

# 額面の和として表せる金額の通り数を求める
result = explore_combinations(stamps, counts, target_value, 0, 0)

puts result