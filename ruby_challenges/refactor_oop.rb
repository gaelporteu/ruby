# class names must be capitalized
class Animal
    # no spaces between = 
	def set_name=(animal_name)
		@name = animal_name
	end
 
	def get_name
		return @name
	end
    # it is always @name for the setter and getter
	def set_owner=(owner_name)
		@name = owner_name
	end
    # it is always @name for the setter and getter
	def get_owner
		return @name
	end
    
    def set_noise=(animal_noise)
		@name = animal_noise
	end

	def get_noise
		return @name
	end

end
 

 
my_ferret = Animal.new
my_ferret.set_name= "Fredo"
animal_name = my_ferret.get_name
my_ferret.set_noise = "squeee"
animal_noise = my_ferret.get_noise
 
my_parrot = Animal.new
my_parrot.set_name= "Budgie"
animal_name = my_parrot.get_name
my_parrot.set_noise = "tweet tweet"
animal_noise = my_parrot.get_noise
 
my_chincilla = Animal.new
my_chincilla.set_name= "Dali"
animal_name = my_chincilla.get_name
my_chincilla.set_noise = "eeeeeeeq"
animal_noise = my_chincilla.get_noise
 
puts "#{my_ferret.name} says #{my_ferret.noise}, 
#{my_parrot.name} says #{my_parrot.noise}, 
and #{my_chincilla.name} says #{my_chincilla.noise}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect