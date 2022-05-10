puts "What is your birthdate (MMDDYYYY)?"

# date to string
birthdate=gets.to_s

# string into array
bd_array = birthdate.split(//)
# remove \n return
bd_array.delete("\n")
puts "Is birthdate a number? #{birthdate.class}"
puts "What is the length of bd_array? #{bd_array.length}"
print bd_array




