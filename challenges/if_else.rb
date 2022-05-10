if 1 + 1 == 2
    puts "One plus one does indeed equal two"
end

my_name = 'Rosemary'
if my_name == 'Ginger'
    puts "Helloooooo, Ginger!"
else
    puts "Oops, I thought your name was Ginger. Sorry about that, #{my_name}!"
end

fav_color = 'black'
if (fav_color == 'red')
    puts "Red like fire"
elsif (fav_color == 'orange')
    puts "Orange well like an orange"
elsif (fav_color == 'yellow')
    puts "Yellow daffodils are so pretty"
elsif (fav_color == 'gree')
    puts "Have you been to the Emerald City in Oz?"
elsif (fav_color == 'blue')
    puts "Blue like the Colorado skies"
elsif (fav_color == 'purple')
    puts "Don't leave me standing in the Purple Rain"
elsif (fav_color == 'black')
    puts "A little bit Goth are we?"
else
    puts "Hmmmm, well I don't know what to say about that color" 
end


puts "What is your favorite number"
fav_number=gets.to_i
case fav_number
when (0)
    puts "Very esoteric"
when (1)
    puts "So singular"
when (2)
    puts "Two hearts entwined"
when (3)
    puts "Like the Holy Trinity"
else
    puts "Sorry I can't count that high"
end

case(weather="raining")
    when "raining" then puts "Take an umbrella"
    when "snowing" then puts "Don't forget your gloves and hat"
    when "sunny" then puts "Grab that sunblock and hit the trail"
    else puts "Your guess is as good as mine. Better dress in layers"
end