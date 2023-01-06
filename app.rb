require_relative './book'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './rental'

class App
  def show_books
    if Book.all.empty?
      puts 'There\'s no books added yet!'
    else
      Book.all.each do |book|
        puts %(Title: "#{book.title}", Author: #{book.author})
      end
    end
  end

  def show_people
    if Student.all.empty? && Teacher.all.empty?
      puts 'There\'s no people added yet'
    else
      Student.all.each do |student|
        puts %([Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each do |teacher|
        puts %([Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    selection = gets.chomp.to_i
    if [1, 2].include?(selection)
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      case selection
      when 1
        print 'Classroom: '
        classroom = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        Student.new(age, classroom, name: name, parent_permission: permission)
        puts 'Student created!'
      when 2
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name: name)
        puts 'Teacher created!'
      end
    else
      puts 'Wrong selection!'
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    Book.new(title, author)
    puts 'Book succesfully created!'
  end

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

  def list_rental_id
    if Person.all.empty? || Book.all.empty?
      puts 'Pleas add a person and a book first!'
    else
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      Rental.all.each do |rental|
        if rental.person.id == id_selected
          puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
        else
          puts 'There\'s no rental with that ID'
        end
      end
    end
  end
end
