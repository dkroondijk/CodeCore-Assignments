require "./comment.rb"

class BlogPost

  attr_reader :comments

  def initialize
    @comments = []
  end

  def add_comment
    comments << comment
  end

  # def add_comment(comment)
  #   comments << comment
  # end

  def delete_comment(index)
    comments.delete_at(index)
  end

end