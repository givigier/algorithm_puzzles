class PermCheck
  def check(a)
    array_length = a.length
    uniq_length = a.uniq.length
    return 0 if a.min != 1
    return 0 if array_length != uniq_length
    return 0 if a.max != array_length
    1
  end
end
