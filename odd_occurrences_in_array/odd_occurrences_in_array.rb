class OddOccurrencesInArray
  def odd_occurences(a)
    uniq = 0
    a.each do |n|
      uniq ^= n
    end
    uniq
  end
end
