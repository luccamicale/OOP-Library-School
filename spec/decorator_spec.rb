require_relative './spec_helper'

describe Decorator do
  decorator = Decorator.new(Nameable.new)

  it 'should be a Nameable' do
    expect(decorator).to be_a(Nameable)
  end

  it 'should be a Decorator' do
    expect(decorator).to respond_to(:correct_name)
  end
end
