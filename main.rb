require 'pry-byebug'

def caesar_cipher(string, shift)
  letters = ('a'..'z').to_a
  str_arr = string.downcase.split("")
  shifted_arr = str_arr.each_with_index.map do |char, idx|
    if shift > 0 && char >= 'a' && char <= 'z'
      shift_char = letters.index(char) + shift
      shift_char = shift_char - letters.length if shift_char > letters.length
      char = letters[shift_char]
      char = char.upcase if string[idx] >= 'A' && string[idx] <= 'Z'
      char
    elsif char >= 'a' && char <= 'z'
      shift_char = letters.index(char) + shift
      shift_char + letters.length if shift_char < 0
      char = letters[shift_char]
      char = char.upcase if string[idx] >= 'A' && string[idx] <= 'Z'
      char
    else
      char
    end
  end
  shifted_arr.join("") + "\n"
end