# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  counters = Array.new(n, 0)
  max = 0
  min = 0

  a.each do |x|
    if (x >= 1) && (x <= n)
      new_count =
        if counters[x - 1] < min + 1
          min + 1
        else
          counters[x - 1] + 1
        end
      counters[x - 1] = new_count
      max = new_count if new_count > max
    end
    if x == n + 1
      min = max
    end
  end
  
  counters.length.times do |i|
    counters[i] = min if counters[i] < min
  end
  counters
end
