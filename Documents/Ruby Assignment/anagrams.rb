def combine_anagrams(words)
 
sorted_words = words.group_by{|w| w.downcase.each_char.sort}.values
return sorted_words
end
words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream', 'scream']
p combine_anagrams words

