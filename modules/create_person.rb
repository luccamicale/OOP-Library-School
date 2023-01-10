module CreatePerson
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
end
