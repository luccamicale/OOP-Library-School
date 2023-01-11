require_relative './app'
require_relative './interface'
require_relative './modules/create_book'
require_relative './modules/exit'
class Cases
  include CreateBook
  include ExitApp
  def initialize
    @app = App.new
    @interface = Interface.new
  end

  def run
    puts @interface.interface
    input = gets.chomp.to_i
    option(input)
  end

  def option(input)
    selections = {
      1 => 'show_books',
      2 => 'show_person',
      3 => 'create_person',
      4 => 'create_book',
      5 => 'create_rental',
      6 => 'list_rental_id',
      7 => 'save_data'
    }
    # exit = {
    #   7 => 'write_books'
    # }
    case input
    when 1..6
      @app.send(selections[input])
      run
    when 7
      @app.send(selections[input])
      puts 'Thanks for using my library!'
    else
      puts 'Option doesn\'t exist ¯\_(ﾟ～ﾟ)_/¯, select another one!'
      run
    end
  end
end
