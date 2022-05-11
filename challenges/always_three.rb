# Refactor to be only two variables
# puts "Give me a number!"
# initial_number = gets.to_i
# number = initial_number
# number += 5
# number *= 2
# number -= 4
# number /= 2
# number = number - initial_number
# puts "Always #{number}"

# Refactor to be only 3 lines with one variable
# puts "Give me a number!"
# number = gets.to_i
# # number = number - ((((number+5)*2)-4)/2)
# # puts " #{number} "
# puts "Always #{number = ((((number+5)*2)-4)/2) - number}"

# Make this into a method
# def always_three
#     puts "Give me a number!"
#     final_number = gets.to_i
#     puts "Wow! Always #{final_number = ((((final_number+5)*2)-4)/2) - final_number}"
# end

# always_three

# Make this into a method with arguments
def always_three(final_number)
    final_number = ((((final_number+5)*2)-4)/2) - final_number
end

puts "Give me a number!"
final_number = gets.to_i

puts "Wow! Always " + always_three(final_number).to_s