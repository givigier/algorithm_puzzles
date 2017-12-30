class Brackets
  def brackets(s)
    return 1 if s.empty?
    matches = { ")" => "(", "}" => "{", "]" => "[" }
    stack = []
    s.chars.each do |c|
      !matches[c].nil? && matches[c] == stack[-1] ? stack.pop : stack.push(c)
    end
    stack.empty? ? 1 : 0
  end
end
