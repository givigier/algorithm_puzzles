test1 = [3, 4, 1, 2, 2, 1, 1]
test2 = [1, 1, 3, 1, 1]
test3 = [10, 40, 20, 50, 30]

def merge_equals(array)
  while array.uniq.size != array.size do
    uniq_elems = []
    repeated_elems = []
    array.each do |a|
      if uniq_elems.include?(a)
        repeated_elems << a
      else
        uniq_elems << a
      end
    end

    small_repeated = repeated_elems.sort.first

    count = 0
    array.each_with_index do |a, i|
      if a == small_repeated
        if count <= 0
          array[i] = 2 * array[i]
        else
          array.delete_at(i)
          break
        end
        count += 1
      end
    end
  end
  array
end

print merge_equals(test1)
print "\n==================\n"
print merge_equals(test2)
print "\n==================\n"
print merge_equals(test3)
