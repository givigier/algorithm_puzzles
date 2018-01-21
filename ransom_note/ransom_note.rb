m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

ransom_hash = {}
ransom.each { |word| ransom_hash[word] = ransom_hash[word].nil? ? 1 : ransom_hash[word] + 1 }
magazine.each { |word| ransom_hash[word] -= 1 unless ransom_hash[word].nil? }

untraceable = true
ransom_hash.each { |_, count| untraceable = false && break if count > 0 }
untraceable ? print('Yes') : print('No')
