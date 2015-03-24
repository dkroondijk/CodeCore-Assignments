require "sinatra"
require "data_mapper"

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

class Snippet
  include DataMapper::Resource

  property :id, Serial
  property :language, String
  property :title, String
  property :code, String
end

Snippet.auto_upgrade!

get "/" do
  @snippets = Snippet.all
  @snip_count = Hash.new(0)

  @snippets.each do |snip|
    @snip_count[snip.language] += 1
  end

  erb :index, layout: :default

end

get "/new_snippet" do
  erb :new_snippet, layout: :default
end

get "/my_snippet" do

  @snippets = Snippet.all

  erb :my_snippet, layout: :default
end

post "/my_snippet" do

  Snippet.create({
    language: params[:language],
    title: params[:title],
    code: params[:code]
    })

  @snippets = Snippet.all
  
  erb :my_snippet, layout: :default
end

get "/snippet/:id" do |id|
  @snippet = Snippet.get(id)
  erb :snippet_info, layout: :default
end

get "/language/:language" do |language|
  @snippets = Snippet.all(:language => language)
  erb :my_snippet, layout: :default
end




