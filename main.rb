require_relative './cases'

class Main
  def start
    app = Cases.new
    app.run
  end
end

Main.new.start
