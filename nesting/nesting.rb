class Nesting
  def is_nested?(s)
    return 1 if s.empty?
    stack = ""
    s.chars.each do |c|
      stack = (stack[-1] == '(') && (c == ')') ? stack[0..-2] : stack + c
    end
    stack.empty? ? 1 : 0
  end
end
