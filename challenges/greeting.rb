def determine_current_hour()
    current_time=Time.new
    current_hour=current_time.hour
end

puts "Hello, What is your name?"
name=gets

def greeting(name)
    current_hour=determine_current_hour

    if(current_hour > 3 && current_hour < 12)
        time_of_day="Morning"
    elsif(current_hour >= 12 && current_hour <= 15)
        time_of_day="Afternoon"
    elsif(current_hour >= 16 || current_hour >= 1)
        time_of_day="Night"
    end

    puts "Good #{time_of_day}, #{name.capitalize}"
end

greeting(name)