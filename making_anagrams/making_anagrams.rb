a = gets.strip
b = gets.strip
letters_a = {}
letters_b = {}
a.chars.each{ |l| letters_a[l] = letters_a[l].nil? ? 1 : letters_a[l] + 1 }
b.chars.each{ |l| letters_b[l] = letters_b[l].nil? ? 1 : letters_b[l] + 1 }

letters_a.each do |letter, _|
  unless letters_b[letter].nil?
    count_b = letters_b[letter].to_i - letters_a[letter].to_i
    count_b = 0 if count_b < 0
    count_a = letters_a[letter].to_i - letters_b[letter].to_i
    count_a = 0 if count_a < 0
    letters_a[letter], letters_b[letter] = count_a, count_b
  end
end

deletions = 0
letters_a.each { |_, count| deletions += count }
letters_b.each { |_, count| deletions += count }
print deletions
