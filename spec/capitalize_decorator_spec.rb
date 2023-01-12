require_relative './spec_helper'

describe CapitalizeDecorator do
  person = Person.new(25, name: 'Lucca')
  capitalize_decorator = CapitalizeDecorator.new(person)

  it 'should capitalize the name to Lucca' do
    expect(capitalize_decorator.correct_name).to eq('Lucca')
  end
end
