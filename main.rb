require_relative './app'

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
