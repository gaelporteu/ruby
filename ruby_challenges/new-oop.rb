class Fish
    def set_name=(fish_name)
        @name = fish_name
    end

    def get_name
        return @name
    end

    def noise
        return "gurgle gurgle"
    end
end

my_clown_loach = Fish.new
my_clown_loach.set_name= "Loachie"
fish_name = my_clown_loach.get_name
puts "#{fish_name} says #{my_clown_loach.noise}."

class Cat
    def initialize(cat_name, noise)
        @cat_name = cat_name
        @noise = noise
    end

    # accessor get and set methods
    attr_accessor :cat_name
    attr_accessor :noise

end

my_cat = Cat.new "Whiskers", "meow meow"

puts "#{my_cat.cat_name} says #{my_cat.noise}."