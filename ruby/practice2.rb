def load_cargo(cargos, max_capacity)
  trucks = []
  current_truck = []

  cargos.each do |cargo|
    if current_truck.sum + cargo <= max_capacity
      current_truck << cargo
    else
      trucks << current_truck
      current_truck = [cargo]
    end
  end

  trucks << current_truck unless current_truck.empty?
  trucks
end

# 荷物の重さの配列を作成（1kgから500kgまで）
cargos = (1..500).to_a

# 最大積載量5000kgのトラックを使って荷物を載せる
max_capacity = 5000
trucks = load_cargo(cargos, max_capacity)

# 必要なトラックの台数を出力
puts trucks.size