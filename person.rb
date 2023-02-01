class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_sefvice?
    of_age? || @parent_permission
  end
end
