class Comment

  attr_reader :comment

  def initialize
  
  end

  def create_comment
    puts "Enter comment:"
    comment = gets.chomp
    #@comments << commentc
  end
end