require_relative './cases'
require_relative './data/read_data'
class Main
  include ShowBooks
  def start
    hash = {
      '1' => File.exist?('./data/books.json'),
      '2' => File.exist?('./data/people.json'),
      '3' => File.exist?('./data/rentals.json')
    }
    hash.each do |key, _value|
      if hash[key]
        read_books
      else
        case key
        when '1'
          FileUtils.touch('./data/books.json')
          json_file = File.open('./data/books.json')
          File.write(json_file, '[]')
        when '2'
          FileUtils.touch('./data/people.json')
          json_file = File.open('./data/people.json')
          File.write(json_file, '[]')
        when '3'
          FileUtils.touch('./data/rentals.json')
          json_file = File.open('./data/rentals.json')
          File.write(json_file, '[]')
        end
      end
    end

    app = Cases.new
    app.run
  end
end

Main.new.start
