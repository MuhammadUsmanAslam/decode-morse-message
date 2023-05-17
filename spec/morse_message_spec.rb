Morse_Symbols = { "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.", "G" => "--.", "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..", "M" => "--", "N" => "-.", "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.", "S" => "...", "T" => "-", "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-", "Y" => "-.--", "Z" => "--..",}

def decode_char(symbol)
   Morse_Symbols.each{ |key, value| 
    if value == symbol
        return key
    end
    }
end

# puts decode_char("-...")
# puts decode_char("..-.")

def decode_word(symbol_word)
    symbol_array = symbol_word.split(' ')
    word_array = []
    symbol_array.each{ |symbol|
        word_array.push(decode_char(symbol))
    }
    return word = word_array.join('')
end

# puts decode_word("-- -.--")

def decode(sentence)
    sentence_symbols_array = sentence.split('   ')
    sentence_words_array = []
    sentence_symbols_array.each{ |word| 
        sentence_words_array.push(decode_word(word))
    }
    return sentence = sentence_words_array.join(' ')
end


# print decode("-- -.--   -. .- -- .")
print decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
