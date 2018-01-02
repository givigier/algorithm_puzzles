class CountFactors
  def count
    count = 0
    i = 1
    while i*i < n
      count += 2 if n % i == 0
      i+= 1
    end
    count += 1 if i*i == n
    count
  end
end
