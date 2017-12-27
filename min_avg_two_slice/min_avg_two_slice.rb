class MinAvgTwoSlice
  def min_index
    min_idx = a.length - 1
    min_avg = Float::INFINITY
    
    a.each_cons(2).each_with_index do |slice, i|
     current_avg = slice.inject(:+)/2.0
     if current_avg < min_avg
       min_avg = current_avg
       min_idx = i
     end
    end

    a.each_cons(3).each_with_index do |slice, i|
     current_avg = slice.inject(:+)/3.0
     if current_avg < min_avg
       min_avg = current_avg
       min_idx = i
     end
    end

    min_idx
  end
end
