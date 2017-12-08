def caesar_encode(string, offset)
  letters = [*('a'..'z')]
  string = string.split("")
  string.collect do |character|
    if character == character.upcase && letters.include?(character.downcase)
      index = (letters.index(character.downcase) + offset)%26
      character = letters[index].upcase
    elsif letters.include?(character)
      index = (letters.index(character) + offset)%26
      character = letters[index]
    else
      character
    end
  end.join
end

def caesar_decode(string, offset)
     caesar_encode(string,offset*-1)
 end 