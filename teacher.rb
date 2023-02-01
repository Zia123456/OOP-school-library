class Teacher < Person
  def initialize(_age, parent_permission: true, name = 'Unknown')
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_sefvice
    true
  end
end
