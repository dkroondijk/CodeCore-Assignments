require "./animal"

class Cat < Animal
  def eat
    super
    puts "I love Fish"
  end
end