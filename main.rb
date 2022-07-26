require 'pry-byebug'

def caesar_cipher(string, shift)
  letters = ('a'..'z').to_a
  str_arr = string.downcase.split("")
  shifted_arr = str_arr.each_with_index.map do |char, idx|
    if char >= 'a' && char <= 'z'
      char = letters[letters.index(char) + shift - letters.length]
      if string[idx] >= 'A' && string[idx] <= 'Z'
        char.upcase
      else
        char
      end
    else
      char
    end
  end
  shifted_arr.join("") + "\n"
end

print caesar_cipher("WhaT a string!", -5)