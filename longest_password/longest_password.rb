class LongestPassword
  def longest_password(s)
    words = s.split(" ")
    valid_pass = []
    words.each do |word|
      letters = 0
      digits = 0
      valid = true
      word.chars.each do |char|
        if ("a".."z").to_a.include?(char) || ("A".."Z").to_a.include?(char)
          letters += 1
        elsif (0..9).to_a.map(&:to_s).include?(char)
          digits += 1
        else
          valid = false
        end
      end
      if valid && ((letters % 2) == 0) && ((digits % 2) == 1)
        valid_pass << word
      end
    end
    valid_pass.sort { |p1, p2| p2.length <=> p1.length }.first.to_s.length
  end
end
