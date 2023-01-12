require_relative './spec_helper'

describe TrimmerDecorator do
  person = Person.new(22, name: 'maximilian')
  trimmer_decorator = TrimmerDecorator.new(person)

  it "should have a method correct the name" do
    expect(trimmer_decorator).to respond_to(:correct_name)
  end

  it 'should be an instance of timmer decorator object' do
    expect(trimmer_decorator).to be_an_instance_of(TrimmerDecorator)
  end
end