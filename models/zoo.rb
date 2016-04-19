class ZooAtCapacity < StandardError
end

class Zoo
  attr_reader :zoo_name, :cages, :employees,
    :season_opening_date, :season_closing_date

  def initialize(zoo_name, season_opening_date, season_closing_date)
    @zoo_name            = zoo_name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @employees           = []
    @cages               = []
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(name)
    @employees << name
  end

  def open?(date)
    date.between?(@season_opening_date, @season_closing_date)
  end

  def add_animal(animal_object)
    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal_object
        break
      elsif cage == @cages.last && !cage.empty?
        raise ZooAtCapacity
      end
    end
  end

  def visit
    string = ""
    @employees.each do |employee|
      string << "#{employee.name} waved hello!\n"
    end

    @cages.each do |cage|
      unless cage.animal == nil
        string << "#{cage.animal.speak}\n"
      end
    end
    string
  end

end
