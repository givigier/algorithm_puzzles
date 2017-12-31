class Dominator
  def leader
    return -1 if a.empty?
    stack = []
    a.each { |n| (stack.last != n) && stack.any? ? stack.pop : stack.push(n) }
    candidate = stack.last
    count = 0
    a_length = a.length
    a.each_with_index do |n, i|
      if n == candidate
        count += 1
        return i if count > (a_length / 2)
      end
    end
    - 1
  end
end
