class Pet 

    def set_name= (pet_name)
        @name = pet_name
    end

    def get_name
        return @name
    end

    def set_owner= (owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner
    end
end

class Ferret < Pet
    def squeal
        return "sqeeeeee"
    end
end

class Chincilla < Pet
    def roar
        return "eeeep"
    end
end 

class Parrot < Pet
    def tweet
        return "chirp chirp"
    end
end

my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferretname = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrotname = my_parrot.get_name

my_chincilla = Chincilla.new
my_chincilla.set_name= "Dali"
chincillaname = my_chincilla.get_name


puts "#{ferretname} says #{my_ferret.squeal}"
puts "#{parrotname} says #{my_parrot.tweet}"
puts "#{chincillaname} says #{my_chincilla.roar}"



