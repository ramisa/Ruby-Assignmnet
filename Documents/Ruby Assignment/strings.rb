def glob_match(filenames, pattern)

#finds all of the astrisks, questions marks and period in the pattern
#gives all the replacements
#creates a* following 'zero or more of a' rule
#creates . following 'any single character' rule
pattern.gsub!(/[\*\?\.]/, '*' => '.*', '.' => '\.', '?' => '.')

#creates a regex with the new pattern
regex = Regexp.new(pattern)

#returns a new array with all filenames that match the regex
filenames.select do |filename|
filename =~ regex
end
end

p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"], "*part*rb?*")

#=> ["part2.rb~", ".part3.rb.un~"]
