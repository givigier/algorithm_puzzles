class MaxSliceSum
  def max_sum(a)
    max = a.max
    return max if max < 0
    max_ending = 0
    max_sum = 0
    a.each do |n|
      max_ending = [0, max_ending + n].max
      max_sum = [max_sum, max_ending].max
    end
    max_sum
  end
end
