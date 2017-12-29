class Triangle
  def triangle?
    return 0 if a.length < 3
    a.sort.each_cons(3).each do |slice|
      return 1 if slice[0] + slice[1] > slice[2]
    end
    0
  end
end
