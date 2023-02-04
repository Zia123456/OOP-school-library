require_relative './person'

class Student < Person
  def initialize(_classroom, age, parent_permission: true, name: 'Unknown')
    super(age, name: name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
