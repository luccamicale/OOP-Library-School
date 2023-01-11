require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './modules/show_books'
require_relative './modules/show_people'
require_relative './modules/create_person'
require_relative './modules/create_book'
require_relative './modules/create_rental'
require_relative './modules/list_rental_id'

class App
  include ListBooks
  include ShowPeople
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListRental
  include ListPerson
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
