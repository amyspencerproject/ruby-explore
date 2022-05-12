# def greeting (name, time)
#     puts "Good #{time} #{name.capitalize}"
# end

# greeting ("Lisa", "morning")
# greeting "Alice", "evening"

# def greeting(name)
#     puts "Good Morning, #{name}"
# end

# greeting ("Frank")

# No () when calling greeting works perfectly
# def greeting(name, time)
#     puts "Good #{time}, #{name}"
# end

# greeting 'Emily', 'Morning'
# greeting ('Emily'), ('Morning')

# Using () when calling greeting breaks.

def greeting(name, time)
    puts "Good #{time}, #{name}"
end

greeting("Emily", "Afternoon")

# Error returned 
#call_method.rb:18: syntax error, unexpected ',', expecting ')'
# greeting ('Emily', 'Morning')
# call_method.rb:18: syntax error, unexpected ')', expecting end-of-input
# greeting ('Emily', 'Morning')
