module ShowPeople
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
end
