module CreateRental
  def create_rental
    if Book.all.empty? || Person.all.empty?
      puts "There\s no persons or books added yet!"
    else
      puts 'Select a book from the following list by number'
      Book.all.each_with_index do |book, index|
        puts %(#{index}\) Title: "#{book.title}", Author: #{book.author})
      end
      selected_book = gets.chomp.to_i
      puts 'Select a person from the following list by number (not id)'
      Student.all.each_with_index do |student, index|
        puts %(#{index}\) [Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each_with_index do |teacher, index|
        puts %(#{index}\) [Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
      selected_person = gets.chomp.to_i
      puts 'Date: '
      date = gets.chomp
      Rental.new(date, Book.all[selected_book], Person.all[selected_person])
      puts 'Rental created succesfully'
    end
  end
end
