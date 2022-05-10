puts "What is your birthdate (MMDDYYYY)?"

# date to string
birthdate=gets.to_s

# string into array
bd_array = birthdate.split(//)
# remove \n return
bd_array.delete("\n")
length=bd_array.length

if (length < 8)
    puts "#{length}"
    puts "Run script again and enter eight digits for birthdate (MMDDYYYY)"
end
# puts "Is birthdate a number? #{birthdate.class}"
# puts "What is the length of bd_array? #{bd_array.length}"
# print bd_array

first_total = bd_array.fetch(0).to_i + bd_array.fetch(1).to_i + bd_array.fetch(2).to_i + bd_array.fetch(3).to_i + bd_array.fetch(4).to_i + bd_array.fetch(5).to_i + bd_array.fetch(6).to_i + bd_array.fetch(7).to_i

# puts "#{first_total}"
# puts "#{first_total.class}"
first_total_strng = first_total.to_s
second_array = first_total_strng.split(//)
# puts "#{second_array}"
# puts " #{second_array.class} "
bd_total = second_array.fetch(0).to_i + second_array.fetch(1).to_i

# puts "#{bd_total} "
final_number = bd_total.to_s

puts "Your Birth Path Number is #{final_number}"
case final_number
when '1'
    puts "Number 1 \nOne is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
when '2'
    puts "Number 2 \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
when '3'
    puts "Number 3 \nThree is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
when '4'
    puts "Number 4 \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
when '5'
    puts "Number 5 \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
when '6'
    puts "Number 6 \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
when '7'
    puts "Number 7 \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
when '8'
    puts "Number 8 \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
when '9'
    puts "Number 9 \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end



