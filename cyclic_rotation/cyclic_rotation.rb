class CyclicRotation
  def rotate(array, k)
    return array if array.length == 0
    k.times { array.unshift(array.pop) }
    array
  end
end
