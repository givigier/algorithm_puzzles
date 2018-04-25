class StrSymmetryPoint
  def symmetry_index(s)
    return -1 if s.empty?
    return 0 if s.length == 1

    index = 0
    s = s.chars
    while !s.empty? do
      first = s.shift
      last = s.pop
      if first == last
        index += 1
      else
        return -1 if index == 0
        break
      end
    end
    index
  end
end
