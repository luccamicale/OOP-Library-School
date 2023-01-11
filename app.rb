require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './modules/show_books'
require_relative './modules/show_person'
require_relative './modules/create_person'
require_relative './modules/create_book'
require_relative './modules/create_rental'
require_relative './modules/list_rental_id'
require_relative './data/read_data'
require_relative './modules/exit'

class App
  include ListBooks
  include ListPerson
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListRentalId
  include ShowBooks
  include ExitApp
  def initialize
    @books = read_books
    @people = read_people
    @rentals = read_rentals
  end

  def save_data
    save_books
    save_persons
    save_rentals
  end
end
