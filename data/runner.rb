require 'json'
module ShowBook
  def shows
    json_file = File.open("./data/books.json")
    data_from_file = File.read(json_file)
    puts data_from_file
    JSON.parse(data_from_file)
  end
end