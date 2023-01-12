require_relative '../data/read_data'
module ListPerson
  include ShowBooks
  def show_person
    if @books.length > 1
      @people.each do |person|
        if person.key?('specialization')
          puts %([Teacher] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']} Specialization: #{person['specialization']})
        else
          puts %([Student] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']})
        end
      end
    else
      Student.all.each do |student|
        puts %([Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age})
      end
      Teacher.all.each do |teacher|
        puts %([Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age})
      end
    end
  end
end
