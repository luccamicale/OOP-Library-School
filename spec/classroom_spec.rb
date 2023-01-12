require_relative './spec_helper'

describe Classroom do
  classroom = Classroom.new('C1')

  it 'Classroom should have a attr_accessor' do
    expect(classroom).to respond_to('label')
  end
end
