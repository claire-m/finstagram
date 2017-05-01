#conversion method
def numbers_for_string(input_string)
    
    if input_string.size != 10
        return "Nope!"
    end
    
    mappings = [{letters: ["A", "B", "C"], number: "2"},
                {letters: ["D", "E", "F"], number: "3"},
                {letters: ["G", "H", "I"], number: "4"},
                {letters: ["J", "K", "L"], number: "5"},
                {letters: ["M", "N", "O"], number: "6"},
                {letters: ["P", "Q", "R", "S"], number: "7"},
                {letters: ["T", "U", "V"], number: "8"},
                {letters: ["W", "X", "Y", "Z"], number: "9"},
               ]
    
    output_result = ""
    input_string.split("").each do |input_char|
        input_char = input_char.upcase
        output_num = ""
        
        mappings.each do |next_mapping|
            if next_mapping[:letters].include?(input_char)
                output_num = next_mapping[:number]
            end
        end
        
        output_result += output_num
    end

    return output_result
end

#this is the part that runs

test_strings = ["HelloWorld", "AmazingWay", "Lighthouse", "Claire"]

test_strings.each do |next_string|
    puts "Start: #{next_string}"
    result_number = numbers_for_string(next_string)
    puts "Phone Number: #{result_number}"
end

