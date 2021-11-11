def caesar_cipher(string, shift_factor)
  cipher = ""
  string.each_char do |character|
    if character.between?("A", "Z") || character.between?("a", "z")
      base = character.between?("A", "Z") ? 65 : 97
      cipher += ((((character.ord % base) + shift_factor) % 26) + base).chr
    else
      cipher += character
    end
  end
  cipher
end