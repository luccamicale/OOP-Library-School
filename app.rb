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

class App
  include ListBooks
  include ListPerson
  include CreatePerson
  include CreateBook
  include CreateRental
  include ListRentalId
end
