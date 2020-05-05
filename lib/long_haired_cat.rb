# frozen_string_literal: true

# long haired cat
class LongHairedCat < Cat
  def initialize(name, age)
    super(name, age)
  end

  def to_string
    super()
    puts "#{@name} is a long haired cat."
  end
end
