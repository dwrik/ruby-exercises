def stock_picker(array)
  days = [-1, -1]
  min_profit = -1
  min_price_idx = -1
  array.each_with_index do |price, idx|
    min_price_idx = idx if price < array[min_price_idx]
    curr_profit = price - array[min_price_idx]
    if curr_profit > min_profit
      min_profit = curr_profit
      days[0] = min_price_idx
      days[1] = idx
    end
  end
  days
end