require "./comment.rb"

class Blog

  attr_accessor :posts
  attr_reader :comments

  def initialize(title)
    @title = title
    @posts = []
  end

  def create_post
    print "Enter your post: "
    post = gets.chomp
    posts << post
    comments = Comment.new
  end

  def add_comment(comment)
    # posts[post_index].comments << "lol"
    comments << comment
  end

  def delete_comment(index)
    comments.delete_at(index)
  end

end