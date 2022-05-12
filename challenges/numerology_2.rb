#2 Determine the birthpath number
def birthpath_number(birthdate)

    # The number is a string coming from the user typing numbers and using the .get to grab info
    # To use the [] the variable must be a string
    # Convert to integer to perform addition
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
    # Then convert back to a string to use [] and back to integer to perform addition
    number = number.to_s
    number = number[0].to_i + number[1].to_i

    # ensure that number is only one digit between 1 & 9
    if (number > 9)
        number = number.to_s
        number = number[0].to_i + number[1].to_i
    end 

    return number
end

#4 Assign the correct message and return message as a variable. This allows future flexibility in your code
def birthpath_message(final_number)
    
    case final_number
    when 1
        message= "Number 1: \nOne is the leader. The number one indicates the ability to stand alone and is a strong vibration. Ruled by the Sun."
    when 2
        message= "Number 2: \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
    when 3
        message= "Number 3: \nThree is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
    when 4
        message= "Number 4: \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
    when 5
        message= "Number 5: \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
    when 6
        message= "Number 6: \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
    when 7
        message= "Number 7: \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
    when 8
        message= "Number 8: \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
    when 9
        message= "Number 9: \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    end
end

#1 Ask user for birthdate. Convert to string
puts "What is your birthdate (MMDDYYYY)?"
birthdate=gets

#3 Assign value from #2 to a variable (final_number) which can be passed to #4
final_number=birthpath_number(birthdate)

#5 Assign #4 message to variable 
message=birthpath_message(final_number)

#6 Display message to user
puts "Your Birth Path Number is #{final_number}"
puts "#{message}"





