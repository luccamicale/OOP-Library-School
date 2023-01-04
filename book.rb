class Book
  attr_accessor :title
  attr_accessor :author
  attr_accessor :rentals

  # setter and getter title and author

  def initialize(title, author)
    # initialize @title and @author
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end
end
