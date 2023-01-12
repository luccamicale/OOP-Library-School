require_relative './spec_helper'

describe Nameable do
  nameable = Nameable.new

  it 'should have a method correct the name' do
    expect(nameable).to respond_to(:correct_name)
  end
end
