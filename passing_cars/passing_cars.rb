class PassingCars
  def cars_count
    count = 0
    zeros = 0
    a.each do |n|
      count += zeros if n == 1
      zeros += 1 if n == 0
    end
    count > 1_000_000_000 ? -1 : count
  end
end
