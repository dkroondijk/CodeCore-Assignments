require "sinatra"
require "./results.rb"

get "/" do
  erb :index, layout: :default
end

post "/test_results" do
  # questions = {
  #   question_1: params[:question_1],
  #   question_2: params[:question_2],
  #   question_3: params[:question_3]
  # }

  question_1 = params[:question_1]
  question_2 = params[:question_2]
  question_3 = params[:question_3]

  @results = Results.new(question_1, question_2, question_3)

  erb :test_results, layout: :default

end