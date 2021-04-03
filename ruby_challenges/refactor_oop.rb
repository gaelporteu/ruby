# class names must be capitalized
class Animal
    # no spaces between = 
	def set_name=(animal_name)
		@animal_name = animal_name
	end
 
	def get_name
		return @animal_name
	end
    
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
    
	def get_owner
		return @owner_name
	end
    
    def set_noise=(animal_noise)
		@animal_noise = animal_noise
	end

	def get_noise
		return @animal_noise
	end

end
 

 
my_ferret = Animal.new
my_ferret.set_animal_name = "Fredo"
animal_name = my_ferret.get_animal_name
my_ferret.set_noise = "squeee"
animal_noise = my_ferret.get_noise
 
my_parrot = Animal.new
my_parrot.set_animal_name = "Budgie"
animal_name = my_parrot.get_animal_name
my_parrot.set_noise = "tweet tweet"
animal_noise = my_parrot.get_noise
 
my_chincilla = Animal.new
my_chincilla.set_animal_name = "Dali"
animal_name = my_chincilla.get_animal_name
my_chincilla.set_noise = "eeeeeeeq"
animal_noise = my_chincilla.get_noise
 
puts "#{my_ferret.animal_name} says #{my_ferret.animal_noise}, 
#{my_parrot.animal_name} says #{my_parrot.animal_noise}, 
and #{my_chincilla.animal_name} says #{my_chincilla.animal_noise}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect