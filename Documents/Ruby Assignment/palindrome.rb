
def palindrome?(string)

string = string.downcase.scan(/\w/) 

if string == string.reverse
	true
else
	false
end
end



puts palindrome?("A man, a plan, a canal -- Panama")  

puts palindrome?("Madam, I'm Adam!")                 

puts palindrome?("Abracadabra")  







