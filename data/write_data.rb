require 'json'
require_relative '../book'
module WriteData
  def write_books(array)
    []
    @zzz = array
    json_file = File.open('./data/books.json')
    data_from_file = JSON.parse(File.read(json_file))
    new_book = { title: title, author: author }
    added_book = data_from_file.push(new_book).to_json
    File.write(json_file, added_book)
  end

  def write_people(person)
    json_file = File.open('./data/people.json')
    data_from_file = JSON.parse(File.read(json_file))
    if person.is_a?(Teacher) == true
      new_person = { id: person.id, age: person.age, specialization: person.specialization, name: person.name }
      added_person = data_from_file.push(new_person).to_json
      File.write(json_file, added_person)
    else
      new_student = { id: person.id, age: person.age, classroom: person.classroom, name: person.name,
                      parent_permission: person.parent_permission }
      added_person = data_from_file.push(new_student).to_json
      File.write(json_file, added_person)
    end
  end
end
