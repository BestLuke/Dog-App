require_relative 'dog'
class CyborgDog < Dog

    def initialize name: 
        super 
        @name = name
        @birthday = "1/2/1018"
    end 


    def self.all
        message = super
    end

end