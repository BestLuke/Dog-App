require 'faker'
class Test  
    attr_accessor :p_name, :number, :address
    def initialize (p_name: Faker::Name.name, number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address)
        @p_name = p_name
        @number = number
        @address = address     
        details
    end
    def details
        puts "#{@p_name} lives at #{@address} to contact them call #{@number}"
    end

end

c = Test.new