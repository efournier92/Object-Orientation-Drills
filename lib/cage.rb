class Cage
  attr_accessor :animal

  def initialize
    @animal
  end

  def empty?
    @animal.nil?
  end
end
