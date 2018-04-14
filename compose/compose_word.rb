test1 = ["I>N", "A>I", "P>A", "S>P"]
test2 = ["P>E", "E>R", "R>U"]
test3 = ["I>N", "P>A", "A>I", "S>P"]

def compose(test_a)
  parts = test_a.map{ |p| p.split(">") }
  result = parts.shift
  while parts.length > 0 do
    parts.each_with_index do |p, i|
      if p[1] == result[0]
        result.unshift(p[0])
        parts.delete_at(i)
        break
      end
      if p[0] == result[-1]
        result.push(p[1])
        parts.delete_at(i)
        break
      end
    end
  end
  result.join("")
end

puts compose(test1)
puts compose(test2)
puts compose(test3)
