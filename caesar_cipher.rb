
LETTERS = "abcdefghijklmnopqrstuvwxyz"

def shift_character(character, shift_factor)
  unless character.between?('a', 'z') || character.between?('A', 'Z')
    return character
  end

  is_upper = character.between?('A', 'Z') ? true : false
  base = is_upper ? 65 : 97

  index = character.ord % base
  shifted_index = index + shift_factor

  shifted_index = 26 - shifted_index.abs if shifted_index < 0  # right shift wrap
  shifted_index = shifted_index % 26 if shifted_index >= 26    # left  shift wrap

  new_char = LETTERS[shifted_index]
  is_upper ? new_char.upcase : new_char
end

def caesar_cipher(string, shift_factor = 5)
  cipher = ""
  string.each_char do |character|
    cipher += shift_character(character, shift_factor)
  end
  cipher
end
