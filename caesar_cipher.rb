
def caesar_cipher(string, shift_factor)
    upcase_range =* ('A'..'Z')
    downcase_range =* ('a'..'z')
    string_array = string.split("")

    string_array.map! do |char| 
        if(char.match? /[A-Z]/) 
            char = upcase_range[((upcase_range.index(char) + shift_factor)%26)]
            char
        end
        if(char.match? /[a-z]/) 
            char = downcase_range[((downcase_range.index(char) + shift_factor)%26)]
            char
        else 
        char
        end
    end
    return string_array.join("")
end

puts "Encripted Text"

puts caesar_cipher("Encripted text! is awesome",5)

puts "Desencripting text"

puts caesar_cipher(caesar_cipher("Encripted text! is awesome ",5),-5)