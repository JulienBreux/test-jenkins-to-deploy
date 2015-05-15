require 'spec_helper'

describe Car do
	before :each do
        @car = Car.new "Audi"
    end

    describe "#new" do
        it "returns a Car object" do
            @car.should be_an_instance_of Car
        end
    end

    describe "#brand" do
        it "returns the correct brand" do
            @car.brand.should eql "Audi"
        end
    end

end