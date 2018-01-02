class MaxProfit
  def max_profit(a)
    min_price = Float::INFINITY
    max_profit = 0
    a.each do |n|
      min_price = [min_price, n].min
      max_profit = [max_profit, n - min_price].max
    end
    max_profit
  end
end
