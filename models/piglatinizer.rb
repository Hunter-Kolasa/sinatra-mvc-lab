class PigLatinizer
    attr_reader :user_text

    def piglatinize(user_text)
        user_text.split(" ").map{|word| wordinizer(word)}.join(" ")
    end

    def vowel?(letter)
        letter.downcase.match(/[aeiou]/)
    end

    def wordinizer(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.downcase.index(/[aeiou]/)
            first_consonants = word.slice(0..vowel_index-1)
            after_cons = word.slice(vowel_index..word.length)
            after_cons + first_consonants + "ay"
        end
    end

end