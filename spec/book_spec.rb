require_relative './spec_helper'

describe Book do
  book = Book.new('Lucca', 'Lucca')

  it 'should be an instance of Book' do
    expect(book).to be_an_instance_of(Book)
  end

  it 'should have rentals' do
    expect(book.rentals).to be_an_instance_of(Array)
  end

  it 'should have a method to add rentals' do
    expect(book).to respond_to(:add_rental)
  end

  it 'Should have a title and author' do
    expect(book.author).to eq ('Lucca')
  end

  it 'Book should have a attr_accessor' do
    expect(book).to respond_to('author')
  end
end            