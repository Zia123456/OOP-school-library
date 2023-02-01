class Person
    initialize( age, parent_permission: true, name = "Unknown")
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

    def name=(value)
        @name = value
    end
    

    def age=(value)
        @age = value
    end
    

    private 
    def is_of_age
    if @age >= 18
        true
    else
        false
    end

    public
    def can_use_sefvice
    if is_of_age || @parent_permission
        true
    else 
        false
    end
end