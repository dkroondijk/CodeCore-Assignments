require "sinatra"

get "/" do
  erb :index, layout: :default
end

post "/fizz_results" do
  @number_1 = params[:number_1].to_i
  @number_2 = params[:number_2].to_i
  @results = []

  for num in 1..100
    if num % @number_1 == 0 && num % @number_2 == 0
      @results << "FizzBuzz"
    elsif num % @number_1 == 0
      @results << "Fizz"
    elsif num % @number_2 == 0
      @results << "Buzz"
    else
      @results << num 
    end 
  end 
  erb :fizz_results, layout: :default
end

