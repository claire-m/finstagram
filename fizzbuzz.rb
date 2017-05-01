puts "FIZZBUZZ!"

(1..100).to_a.each do |next_number|
    
    output_value = ""
    
    
    if next_number % 15 == 0
        puts "FizzBuzz"
    elsif next_number % 3 == 0
      puts "Fizz"
    elsif next_number % 5 == 0    
        puts "Buzz"
    else 
        puts "#{next_number}"
    end    
end