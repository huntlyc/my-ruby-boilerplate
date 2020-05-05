# frozen_string_literal: true

# A cat class
class Cat
  attr_reader :name, :age, :collar
  def initialize(name, age)
    @name = name
    @age = age

    @collar = Collar.new('pink') if name == 'rhubs'
  end

  def to_string
    puts "#{@name} is #{@age} years old"

    if @collar
      puts "#{@name} is wearing a #{@collar.color} collar."
    else
      puts "#{@name} does not wear a collar."
    end
  end

  Collar = Struct.new(:color)
end
