require "./animal"

class Dog < Animal
  def eat
    super
    puts "bones are yummy"
  end
end