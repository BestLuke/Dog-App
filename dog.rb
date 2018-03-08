require 'faker'
class Dog
    attr_accessor :gender, :name, :age, :location

    class << self
        #def dog.count
        #means you dont need self in front oof all the variables

        def count
            #count all dogs in existence
        end

        def all
            #return all dogs ever created
        end

        def find id
            #find a single dog by it's id
        end

        def where **args
            #find dogs where colour, breed, etc equals the args providedd
        end
    end 

    def initialize (gender: Faker::Dog.gender, name: Faker::RickAndMorty.character, age: Faker::Dog.age, location: Faker::Address.city, breed: Faker::DrWho.specie)
        @name = name
        @age = age
        if age == "puppy"
            @age = "pupperino"
        else
            name = name
        end
        @location = location
        @gender = gender
        @breed = breed
        @walk = 0
        speak
    end
    def speak

        puts "#{@name} says #{Faker::Dog.sound}, it is a #{@age} #{@gender} #{@breed} and lives in #{@location},"
    end
=begin
    def ==(other)
        other.breed.==@breed
    end

    def name?
        !@name.nil?
    end

    def name=(value)
        if(value.nil?) then
            #Ignore value
        else
            @name = value
        end
    end
=end
    def birthday
        @birthday
    end

    def walk
        #@walk += rand(1..100)
        @walk += 1
        self
    end
    def display
         suffix = @walks == 1 ? '' : 's'
        "#{@name} has been on #{@walk} walk#{suffix} today"
    end
end
=begin
dog1 = Dog.new 
dog2 = Dog.new 

puts dog1.walk.display
=end