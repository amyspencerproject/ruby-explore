class Pet 

    def set_type= (pet_type)
        @type = pet_type
    end

    def get_type
        return @type
    end

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

    def set_sound= (pet_sound)
        @pet_sound = pet_sound
    end
    
    def get_sound
        return @pet_sound
    end
end

freddo = Pet.new
freddo.set_type= "ferret"
freddo.set_name= "Fredo"
freddo.set_sound= "sqeeeeeeee"
freddo_type=freddo.get_type
freddo_name = freddo.get_name
freddo_sound = freddo.get_sound

budgie = Pet.new
budgie.set_type= "parrot"
budgie.set_name= "Budgie"
budgie.set_sound= "chirp"
budgie_type=budgie.get_type
budgie_name = budgie.get_name
budgie_sound = budgie.get_sound

dali = Pet.new
dali.set_type= "chincilla"
dali.set_name= "Dali"
dali.set_sound= "eeep"
dali_type=dali.get_type
dali_name = dali.get_name
dali_sound = dali.get_sound

puts "#{freddo_name} is a #{freddo_type} who says #{freddo_sound}"
puts "#{budgie_name} is a #{budgie_type} who says #{budgie_sound}"
puts "#{dali_name} is a #{dali_type} who says #{dali_sound}"



