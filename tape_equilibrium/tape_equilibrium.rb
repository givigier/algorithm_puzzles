class TapeEquilibrium
  def minimal_difference(array)
    min = Float::INFINITY
    left_sum = array.shift
    right_sum = array.reduce(:+)
    (0..(array.length - 1)).each do |i|
      difference = (left_sum - right_sum).abs
      min = difference if difference < min
      left_sum += array[i]
      right_sum -= array[i]
    end
    min
  end
end
