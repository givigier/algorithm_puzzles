class MinPerimeterRectangle
  def min_perimeter
    a = Math.sqrt(n).floor
    while n % a != 0 do
      a -= 1
    end
    b = n / a
    2 * (a + b)
  end
end
