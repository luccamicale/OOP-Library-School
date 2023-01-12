require 'json'
module ExitApp
  attr_accessor :books

  def save_books
    json_file = File.open('./data/books.json')
    JSON.parse(File.read(json_file))
    File.write('./data/books.json', @books.to_json)
  end

  def save_persons
    json_file = File.open('./data/people.json')
    JSON.parse(File.read(json_file))
    File.write('./data/people.json', @people.to_json)
  end

  def save_rentals
    json_file = File.open('./data/rentals.json')
    JSON.parse(File.read(json_file))
    File.write('./data/rentals.json', @rentals.to_json)
  end
end
