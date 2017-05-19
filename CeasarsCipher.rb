
def ceasar_cipher(input, nums)
  text = input.downcase
  num_input = nums.to_i
  text_array = []

#puts text into text_array by each byte
  text.each_byte do |c|
    if(97..122).include? c
      if((c + num_input) > 122)
        remainder = ((c + num_input) - 122)+ 96
        text_array.push(remainder)
      elsif(c + num_input < 97)
        remainder = (122 + num_input)
        text_array.push(remainder)
      else
        text_array.push(c + num_input)
      end
    else
      text_array.push(c)
    end
  end

  #text_array goes back to charachters
  text_array.map! { |char| char.chr }


puts text_array.join.to_s
end


puts "enter a string!"
user_string = gets.chomp
puts "enter an offset number"
user_offset = gets.chomp

ceasar_cipher(user_string, user_offset)
