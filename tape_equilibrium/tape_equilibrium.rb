class TapeEquilibrium
  def minimal_difference(array)
    left_sum = a.shift
    right_sum = a.reduce(:+)
    min_sum = (left_sum - right_sum).abs
    current_sum = min_sum
    (0...a.length).each do |i|
      current_sum = (left_sum - right_sum).abs
      min_sum = current_sum if current_sum < min_sum
      left_sum += a[i]
      right_sum -= a[i]
    end
    min_sum
  end
end
