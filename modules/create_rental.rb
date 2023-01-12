require 'json'

module CreateRental
  def create_rental
    if @books.empty? || @people.empty?
      puts "There's no persons or books added yet!"
    else
      puts 'Select a book from the following list by number'
      @books.each_with_index do |book, index|
        puts %(#{index} Title: "#{book['title']}", Author: #{book['author']})
      end
      selected_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      @people.each_with_index do |person, index|
        if person.key?('specialization')
          puts %(#{index} [Teacher] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']} Specialization: #{person['specialization']})
        else
          puts %(#{index} [Student] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']})
        end
      end
      selected_person = gets.chomp.to_i
      puts 'Date: '
      date = gets.chomp
      created_rental = Rental.new(date,
                                  { 'title' => @books[selected_book]['title'],
                                    'author' => @books[selected_book]['author'] },
                                  @people[selected_person]['id'])
      @rentals.push({ 'id' => created_rental.id, 'date' => date, 'person' => created_rental.person,
                      'title' => created_rental.book['title'] })
      puts 'Rental created succesfully'
    end
  end
end
