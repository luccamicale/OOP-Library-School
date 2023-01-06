class Rental
  attr_accessor :date, :book, :person

  def initialize(date)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
