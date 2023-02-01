class Person
initialize(name = "Unknown", age, parent_permission: true)
  @id = Random.rand(1..100)
  @name = name
  @age = age
  @parent_permission = parent_permission
end

def id
    @id
end

def name
    @name
end

def age
    @age
end

def name = (value)
    @name = value
end

def age = (value)
    @age = value
end

private 
def is_of_age
    if @age >= 18
        return true
    else
        return false
    end
end

public
def can_use_sefvice
    if is_of_age || @parent_permission
        return true
    else 
        return false
    end
end
end

class Student < Person
    def initialize(name = "Unknown", age, parent_permission:true)
        super(name, parent_permission)
        @classroom = classroom
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end
end

class Teacher < Person
    def initialize(name = "Unknown", age, parent_permission:true)
        super(name, parent_permission)
        @specialization = specialization
    end

    def can_use_sefvice
        return true
    end
end