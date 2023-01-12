require_relative './spec_helper'

describe Teacher do
  teacher = Teacher.new(25, 'Math', 'Camila')

  it 'should have an age equals to 25' do
    expect(teacher.age).to eq(25)
  end

  it 'should return true if the teacher can use the services' do
    expect(teacher.can_use_services?).to be true
  end

  it 'should have a specialization in Math' do
    expect(teacher.specialization).to eq('Math')
  end
end
