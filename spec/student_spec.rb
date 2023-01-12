require_relative './spec_helper'

describe Student do
  student = Student.new('C1', 22, name: 'Lucca')

  it "should have the name Lucca" do
    expect(student.name).to eq('Lucca')
  end

  it 'should be an instance of Student' do
    expect(student).to be_an_instance_of(Student)
  end

  it 'should have rentals' do
    expect(student.rentals).to be_an_instance_of(Array)
  end

  it "should have a method play_hooky" do
    expect(student).to respond_to(:play_hooky)
  end
end
