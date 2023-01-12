require_relative './spec_helper'

describe Person do
    person = Person.new(25, name: 'gustavo')
    cap_decorator = CapitalizeDecorator.new(person)
  
    it 'should be an instance of Person' do
      expect(person).to be_an_instance_of(Person)
    end
  
    it 'should have a name' do
      expect(person.name).to eq('gustavo')
    end
  
    it 'should have an age' do
      expect(person.age).to eq(25)
    end
  
    it 'should have rentals' do
      expect(person.rentals).to be_an_instance_of(Array)
    end
end