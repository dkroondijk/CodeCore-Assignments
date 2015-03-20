require "sinatra"
require "./lib/car"

get "/" do
  erb :index, layout: :default
end

get "/car_age" do
  erb :car_age, layout: :default
end

post "/car_age" do
  car_year = params[:car_year]
  
  @car = Car.new(car_year)

  erb :car_age, layout: :default
    
end


