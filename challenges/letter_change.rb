# This challenge is to replace every letter in a string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return the modified string e.g:
# Input => hello*3
# Output => Ifmmp*3

def generate_alphabet
  ("a".."z").to_a
end

def change_letter(word)
  arr = []
  split = word.downcase.split("")
  split.each do |x|
    if /[a-z]/.match(x)
      generate_alphabet.each do |y|
        if x == y
          elem = generate_alphabet.index(y)
          next_elem = generate_alphabet[elem + 1]
          if /[aeiou]/.match(next_elem)
            arr << next_elem.upcase
          else
            arr << next_elem
          end
        end
      end
    else
      arr << x
    end
  end
  arr.join
end

print "Which word do you want to change? "
get_word = gets.chomp
puts "'#{get_word}' has been modified to '#{change_letter get_word}'"
