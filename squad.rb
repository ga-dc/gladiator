class Squad
  attr_reader :name

  def initialize(name)
    @name = name
    @students = []
  end

  def add_student(student)
    @students.push(student)
  end

end

walter = Person.new("Walter")
robert = Person.new("Robert")

ada.add_student(walter)
ada.add_student(robert)
