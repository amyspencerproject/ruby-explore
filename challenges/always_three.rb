puts "Give me a number!"
number = gets
number1 = number.to_i
number1 += 5
number1 *= 2
number1 -= 4
number1 /= 2
final_number = number1 - number.to_i
puts "#{final_number}"
