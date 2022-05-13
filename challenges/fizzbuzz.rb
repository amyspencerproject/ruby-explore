# Want to make an array from 1-100 without typing it all out
i=1
while (i < 101)
    if (i%3) == 0 && (i%5) == 0
        puts "FizzBuzz"
        elsif (i%3) == 0
            puts "Fizz"
        elsif (i%5) == 0
            puts "Buzz"
        else puts i
    end
    i+=1
end

# first attempt with a typed out array
# array_numbers = [
#     1,
#     2,
#     3,
#     4,
#     5,
#     6,
#     7,
#     8,
#     9,
#     10,
#     11,
#     12,
#     13,
#     14,
#     15
# ]

# array_numbers.each do |number|
    
#     if (number.to_i%3) == 0 && (number.to_i%5) == 0
#         number = "FizzBuzz"
#         puts number
#         elsif (number.to_i%3) == 0
#             number = "Fizz"
#             puts number
#         elsif (number.to_i%5) == 0
#             number = "Buzz"
#             puts number
#         else puts number
#     # puts number
#     end
#     # return check
# end

