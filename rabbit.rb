class Rabbit
    
    attr_accessor :name, :owner_name, :description

    def parkour
        return "somehow hopped to the top of the bookcase"
    end
    
    def feed
        return "carrots crunching"
    end
        
end

my_rabbit = Rabbit.new
my_rabbit.name= "Pikachu"
rabbitname = my_rabbit.name
my_rabbit.owner_name= "Betty"
friend = my_rabbit.owner_name
my_rabbit.description = "super ninja rabbit"
owner_description= my_rabbit.description

puts "#{friend} fed her #{owner_description}, #{rabbitname}. After #{my_rabbit.feed} stopped, she found #{rabbitname} #{my_rabbit.parkour}."
            
            