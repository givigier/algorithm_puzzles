class FrogRiverOne
  def min_time
    leaves = Array.new(x, -1)
    a.each_with_index do |n, i|
      leaves[n-1] = i if leaves[n-1] == -1
    end
    return -1 if leaves.include?(-1)
    leaves.max
  end
end
