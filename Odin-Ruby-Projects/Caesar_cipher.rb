def ceasar_cipher(string,shift_factor)
  shifted_string = ""
  characters = string.split("") 
  characters.map do |character|
    shifted_character = character.ord
    if shifted_character.between?(97,122)
      shifted_character = character.ord+shift_factor   
      if shifted_character > 122
        shifted_character =  (shifted_character - 123) + 97
      end
    elsif shifted_character.between?(65,90)
        shifted_character = character.ord+shift_factor   
        if shifted_character > 90
        shifted_character =  (shifted_character - 91) + 65
        end
    end
    shifted_string += shifted_character.chr
  end
  puts shifted_string
end
ceasar_cipher "What a String!",5
