class Kitty
    def set_name=(kitty_name)
        @name = kitty_name
    end

    def get_name
        return @name
    end

    def set_owner=(owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

    def purr
        return "PRRR PRRR PRRR"
    end

    def human
        return "Who is a good girl?"
    end
end

# creates a new instance of the Kitty class, so make a new kitty 
my_kitty = Kitty.new
my_kitty.set_name= "Morty"
my_kitty.set_owner= "David"
kittyname = my_kitty.get_name
owner = my_kitty.get_owner
puts "#{owner} says #{my_kitty.human} "
puts "#{kittyname} says #{my_kitty.purr} "

puts my_kitty.inspect