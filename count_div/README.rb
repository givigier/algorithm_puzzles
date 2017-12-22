class CountDiv
  def count
    tmp = b / k - a / k
    return tmp + 1 if a % k == 0
    tmp
  end
end
