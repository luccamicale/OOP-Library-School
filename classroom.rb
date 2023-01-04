class Classroom
    attr_accessor :label
    # label instance variable 
    attr_reader :student
    # Setter and getter for @label

    def initialize(label)
        # Create the has-many/belongs-to relationship between Classroom and Student
        @label = label
        # Create the has-many side (a classroom has many students).
        @student = []
        # Create the belongs-to side (a student belongs to a classroom)

    end

    def add_student(student)
        @student.push(student)
        student.classroom = self
        # add the student in the class and the class has many students
    end
end