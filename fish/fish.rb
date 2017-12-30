class Fish
  def survivors_count(a, b)
    survivors = a.length
    stack = []
    a.each_index do |i|
      if b[i] == 1
        stack << i
      else
        while stack.any? do
          survivors -= 1
          a[stack[-1]] < a[i] ? stack.pop : break
        end
      end
    end
    survivors
  end
end
