# parent class for creating a new kitty
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

    def set_home=(kitty_home)
        @home = kitty_home
    end

    def get_home
        return @home
    end
end

# inherited class for individual kitty
class  Morty < Kitty
    def purr
        return "PRRR PRRR PRRR"
    end

    def human
        return "Who is a good girl?"
    end
end

class Spike < Kitty
    def scared
        return "Hide! Hide! Hide!"
    end

    def storm 
        return "Its just a little wind"
    end
end

class Rando < Kitty
    def war_cry
        return "WTF Give me all the FOOD bitches"
    end
end

# Morty
morty = Morty.new
morty.set_name= "Morty"
morty.set_owner= "David"
morty.set_home= "Colorado"
mortyname = morty.get_name
mortyowner = morty.get_owner
mortyhome = morty.get_home

#Spike
spike = Spike.new
spike.set_name= "Spike"
spike.set_owner= "Amy"
spike.set_home= "Colorado"
spikename = spike.get_name
spikeowner = spike.get_owner
spikehome = spike.get_home

#Rando
rando = Rando.new
rando.set_name= "Rando"
rando.set_owner= "Rando"
rando.set_home= "Where ever #{rando.get_name} wants to be"
var1 = rando.get_name
var2 = rando.get_owner
var3 = rando.get_home



# Display to user
# Morty
puts "#{mortyname} lives with #{mortyowner} in #{mortyhome} "
puts "#{mortyowner} says #{morty.human} "
puts "#{mortyname} says #{morty.purr} \n"
puts "\n\n"

#Spike
puts "#{spikename} lives with #{spikeowner} in #{spikehome} "
puts "#{spikeowner} says #{spike.storm} "
puts "#{spikename} says #{spike.scared} \n"
puts "\n\n"

#Rando
puts "#{var1} lives #{var3}"
puts "#{var1} answers to #{var2} only"
puts "#{var1} yells #{rando.war_cry}"
puts "\n\n"


# Inspects
puts morty.inspect
puts spike.inspect
puts rando.inspect