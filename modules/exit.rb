require 'json'
module ExitApp
  attr_accessor :books

  def save_books
    json_file = File.open('./data/books.json')
    data_from_file = JSON.parse(File.read(json_file))
    data = @books.each { |key| key }
    File.write('./data/books.json', data.to_json)
  end

  def save_persons
    json_file = File.open('./data/people.json')
    data_from_file = JSON.parse(File.read(json_file))
    data = @people.each { |key| key }
    File.write('./data/people.json', data.to_json)
  end

  def save_rentals
    json_file = File.open('./data/rentals.json')
    data_from_file = JSON.parse(File.read(json_file))
    data = @rentals.each { |key| key }
    File.write('./data/rentals.json', data.to_json)
  end
end
