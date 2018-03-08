require_relative '../dog'

RSpec.describe Dog do
    it "Should respond to walk" do
        dog = Dog.new
        expect(dog).to respond_to :walk
    end
    it "Should count number of walks" do
        dog = Dog.new
        expect(dog.walk).to eq "I have been on 1 walk today"
        #expect(dog.walk).to eq "I have been on 2 walks today"
    end
end