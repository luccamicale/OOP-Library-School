class Rental
  attr_accessor :date, :book, :person, :id

  def initialize(date, book, person)
    @id = Random.rand(1..1000)
    @date = date
    @person = person
    @book = book
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
