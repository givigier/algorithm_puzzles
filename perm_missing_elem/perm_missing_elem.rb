class PermMissingElem
  def missing_elem(a)
    return 1 if a.empty?
    total = (1..(a.length+1)).reduce(:+)
    a_sum = a.reduce(:+)
    total - a_sum
  end
end
