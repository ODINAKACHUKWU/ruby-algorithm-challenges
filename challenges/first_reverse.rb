#This challenge is to reverse words e.g:
# Input => John Doe
# Output => eoD nhoJ

def first_reverse(word)
  reverse = word.reverse
  return reverse
end

print "Which word do you want to reverse? "
get_word = gets.chomp
puts "The reverse of #{get_word} is #{first_reverse get_word}"
