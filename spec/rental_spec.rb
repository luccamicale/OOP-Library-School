require_relative './spec_helper'

describe Rental do
    rental = Rental.new('2023-01-04', 'Lucca', 'The Little Prince')

    it "should have to be equal Lucca" do
        expect(rental.book).to eq('Lucca')
    end

    it "should have to be equal The Little Prince " do
        expect(rental.person).to eq('The Little Prince')
    end

    it "should have to be equal 2023-01-04 " do
        expect(rental.date).to eq('2023-01-04')
    end
end    