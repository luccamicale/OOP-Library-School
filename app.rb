require_relative './classroom'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
  attr_reader :books, :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def run
    prompt_user
  end

  # List all books
  def list_all_books
    if @books.empty?
      puts 'The book list is empty, chose 4 to create book'
    else
      puts @books.count <= 1 ? "\n#{@books.count} Book\n" : "\n#{@books.count} Book's \n"
      @books.each_with_index do |book, index|
        puts "#{index + 1} Title: '#{book.title}', Author: #{book.author}"
      end
    end
  end

  # List Person: Student/Teacher
  def list_all_people
    if @people.empty?
      puts 'The people list is empty, chose 3 to add people'
    else
      puts @people.count <= 1 ? "\n#{@people.count} Person\n" : "\n#{@people.count} Person's \n"
      @people.each_with_index do |person, index|
        puts "#{index + 1} [#{person.type}] Name: #{person.name}, ID: #{person.id} Age: #{person.age}"
      end
    end
  end

  # Create Person: Student/Teacher
  def create_person
    print 'Which do you want to create? A student (press 1) or a teacher (press 2)?: '
    choice = gets.chomp.to_i
    case choice
    when 1
      register_student
    when 2
      register_teacher
    else
      puts 'Incorect choice, choose a number between 1-2'
      create_person
    end
  end

  def register_student
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Classroom: (C1,C2): '
    classroom = gets.chomp

    has_permission = permission?

    student = Student.new(classroom, age, name: name, parent_permission: has_permission)
    @people << student unless @people.include?(student)

    puts "\n Student '#{name}' aged '#{age}' with the classroom '#{classroom}' created Successfully 👍"
  end

  def register_teacher
    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name: name)
    @people << teacher unless @people.include?(teacher)

    puts "\n Teacher '#{name}' aged '#{age}' with the specialization '#{specialization}' created Successfully 👍"
  end

  def permission?
    print 'Has parent permission [Y/N]: '
    permission = gets.chomp

    case permission
    when 'n', 'N'
      false
    when 'y', 'Y'
      true
    else
      puts "\nIncorect choice, please press 'n'/'N' for false and 'y'/'N' for true"
    end
  end

  # Books
  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book unless @books.include?(book)

    puts "\n Book is successfully created 📚"
  end

  # Rentals
  def list_rentals_by_id
    print "Enter a person's ID: "
    person_id = gets.chomp.to_i
    if !@people.find { |person| person.id == person_id }
      puts "No rental found with ID: #{person_id}"
    elsif @rentals.empty?
      puts 'The rental list is empty'
    else
      puts "\nRentals #{@rentals.count}:\n"
      @rentals.select do |rental|
        if rental.person.id == person_id
          puts "Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
        end
      end
    end
  end

  def create_rental
    print "Select a book from the following list by number:\n"
    list_all_books
    prompt_user if @books.empty?
    book_index = gets.chomp.to_i - 1

    print "Select a person from the following list by number:\n"
    list_all_people
    prompt_user if @people.empty?
    person_index = gets.chomp.to_i - 1

    print 'Date [yyyy/mm/dd]: '
    date = gets.chomp

    rental = Rental.new(date, @people[person_index], @books[book_index])
    @rentals << rental unless @rentals.include?(rental)

    puts "\nRental created successfully 👍 \n\n"
  end

  def quit_app
    puts 'Thank you for using this App! 🙏'
    exit
  end
end
