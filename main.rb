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

obj = Main.new
obj.run
