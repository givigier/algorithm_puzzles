class MaxProductOfThree
  def max_product(a)
    a.sort!
    sum_one = a.last(3).inject(:*)
    sum_two = a[0] * a[1] * a[-1]
    [sum_one, sum_two].max
  end
end
