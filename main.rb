require_relative './app'

def menu
  puts "\n 👋 Welcome to School Library App! 📚 \n\n"
  puts 'Please chose an option by entering a number: '
  options = {
    1 => 'List all books',
    2 => 'List all people',
    3 => 'Create a person',
    4 => 'Create a book',
    5 => 'Create a rental',
    6 => 'List all rentals for a given person id',
    7 => 'Exit'
  }
  puts options.map { |key, value| "#{key}. #{value}" }.join("\n")
end

def option_case(choice)
  case choice
  when 1
    list_all_books
  when 2
    list_all_people
  when 3
    create_person
  when 4
    create_book
  when 5
    create_rental
  when 6
    list_rentals_by_id
  else
    puts 'Incorect choice, chose a number between 1-7'
  end
end

def prompt_user
  menu
  choice = gets.chomp.to_i
  choice == 7 ? quit_app : option_case(choice)
  prompt_user
end

def main
  app = App.new
  app.run
end

main
