class MissingInteger
  def minimum_missing
    a_clear = a.reject{ |n| n <= 0 }
    return 1 if a_clear.empty?
    return 1 if a_clear.min > 1
    a_length = a.length
    minimums = Array.new(a_length, 0)
    a_clear.each do |n|
      minimums[n-1] += 1 if n <= a_length
    end
    minimums.each_with_index do |count, i|
      return i+1 if count == 0
    end
    minimums.length + 1
  end
end
