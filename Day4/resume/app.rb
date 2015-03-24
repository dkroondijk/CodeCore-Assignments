require "sinatra"
require "data_mapper"

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data.db")

use Rack::MethodOverride

class Resume
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :address, String
  property :url, Text
  property :image, Text
  property :linked_in, Text
  property :education, Text
  property :work, Text
end

Resume.auto_upgrade!

get "/" do
  erb :index, layout: :default
end


post "/resume" do

  Resume.create({
    first_name: params[:first_name],
    last_name: params[:last_name],
    address: params[:address],
    url: params[:url],
    image: params[:image],
    linked_in: params[:linked_in],
    education: params[:education],
    work: params[:work]
    })

  @url = params[:url]
  redirect to("/resume/#{@url}")  
end

get "/resume" do
  @resume = Resume.all
  erb :resume, layout: :default
end

get "/resume/:first_name" do |name|
  
  @my_resume = Resume.all(:first_name => name)
  
  erb :my_resume, layout: :default
end

