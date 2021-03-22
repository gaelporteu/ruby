class Pet
    def set_name=(fish_name)
        @name = fish_name
    end

    def get_name
        return @name
    end
end

class Fish < Pet
    def noise
        return "gurgle gurgle"
    end
end

my_clown_loach = Fish.new
my_clown_loach.set_name= "Loachie"
fish_name = my_clown_loach.get_name
puts "#{fish_name} says #{my_clown_loach.noise}."

puts my_clown_loach.inspect