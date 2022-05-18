# ************* These Greeter classes do the same things. 
# ************* The bottom one has an initialize method that gets initialized with .new("Max")
# ************* So Greeter.new("Max") calls the initialize method on the Greeter class and returns a new object
# class Greeter
#     def self.greet(name)
#       "Hello, #{name}"
#     end
# end

# Greeter.greet("Max")
# puts Greeter.greet("Max")


# class Greeter
#     def initialize(name)
#         # this is an instance
#       @name = name
#     end
  
#     def say_hello
#       "Hello #{@name}"
#     end
#   end
  
#   greeting = Greeter.new("Max")
#   puts greeting.say_hello
#   puts greeting.inspect

# ********** Taking it up a level just as the Blog class does in the solution *****************

class Greeter
    def self.greet(name)
        "Hello, #{name}"
    end
end

class Person
    def initialize(name)
        @name=name
    end

    def name
        @name
    end
end

# class PersonCreator
#     def self.create
#         # ask user for input
#         puts "Whats your name?"
#         name = gets.chomp

#         # Use the input to create a new instance of a Person
#         person = Person.new(name)

#         # Use the class method on Greeter
#         puts Greeter.greet(person.name)
#     end
# end

# PersonCreator.create

# ********** Now go even on more level up and gather the objects from each instance and put in an array *******
# ********** This is done with a class method @@

class PersonCreator
    @@bucket_of_people = []

    def self.create
        #ask the user their name
        puts "What's your name?"
        name = gets.chomp

        # use the input to create a new instance of Person
        person = Person.new(name)
        @@bucket_of_people << person

        # use the class method on Greeter
        puts Greeter.greet(person.name)

    end 

    def self.who_is_in_the_bucket?
        puts "The bucket contains:"
        @@bucket_of_people.each do |person|
            puts "- #{person.name}"
        end
    end
end


PersonCreator.create
PersonCreator.create
PersonCreator.create

PersonCreator.who_is_in_the_bucket?
