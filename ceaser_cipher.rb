def caeser_cipher(str, shift_num)
    alpha = ('a'..'z').to_a
    str_arr = []
    str.each_char do |char|
        alpha_index = alpha.index { |ltr| ltr == char.downcase }
        # p alpha_index
        if is_upper?(char) && alpha_index != nil
            next_index = get_shifted_index(alpha_index, shift_num)
            str_arr.push(alpha[next_index].upcase)
        elsif alpha_index != nil
            next_index = get_shifted_index(alpha_index, shift_num)
            str_arr.push(alpha[next_index])
        else
            str_arr.push(char)
        end
    end
    str_arr.join()
end

def is_upper?(char)
    return char == char.upcase
end

def get_shifted_index(index, shift_num)
    if index + shift_num > 25 
        next_index = (index + shift_num) - 26
    else
        next_index = index + shift_num
    end
    next_index
end

puts caeser_cipher("What a string!", 13)