require 'json'
require 'fileutils'
module ShowBooks
  def read_books
    json_file = File.open('./data/books.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_people
    json_file = File.open('./data/people.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_rentals
    json_file = File.open('./data/rentals.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end
end
