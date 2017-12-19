class BinaryGap
  def max_sequence(n)
    max_count = 0
    current_count = 0
    boundary_found = false
    while n > 0
      off = n % 2
      if(off == 1)
        boundary_found = true
        current_count = 0
      end

      if(off == 0 && boundary_found)
        current_count += 1
      end

      if current_count > max_count
        max_count = current_count
      end
      n = n / 2
    end
    max_count
  end
end
