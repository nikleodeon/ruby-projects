def caesar_cipher(string, shift)
    encrypted_string = ""
    string.each_char do |c|
      shifted_string = c.ord + shift
      if (shifted_string > 90 && shifted_string < 97) || (shifted_string > 122)
        shifted_string -= 26
        encrypted_string += shifted_string.chr
      elsif c.ord == 32
        encrypted_string += " "
      elsif (c.ord > 32 && c.ord < 41)
        encrypted_string += c.chr
      else
        encrypted_string += shifted_string.chr
      end
    end
    puts encrypted_string
  end
  
  caesar_cipher('What a string!', 5)