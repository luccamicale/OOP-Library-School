require_relative './app'
class Interface
  puts '--------------------------------------------------'
  puts 'Welcome to my library! ͡° ͜ʖ ͡°'
  def interface
    puts '--------------------------------------------------'
    puts 'Select an option: '
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals'
    puts '7 - Exit'
    puts '--------------------------------------------------'
  end
end

class Main
  def initialize
    @app = App.new
    @interface = Interface.new
  end

  def run
    puts @interface.interface
    input = gets.chomp.to_i
    cases(input)
  end

  def cases(input)
    selections = {
      1 => 'show_books',
      2 => 'show_people',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_id'
    }
    case input
    when 1..6
      @app.send(selections[input])
      run
    when 7
      puts 'Thanks for using my library!'
    else
      puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
      run
    end
  end
end
obj = Main.new
obj.run
