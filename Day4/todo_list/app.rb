require "sinatra"
require "data_mapper"

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data.db")

use Rack::MethodOverride

class Task
  include DataMapper::Resource

  property :id, Serial
  property :task, Text
  property :status, Integer
end

Task.auto_upgrade!

get "/" do
  @pending_tasks = Task.all(:status => 1)
  @completed_tasks = Task.all(:status => 2)
  erb :index, layout: :default
end

post "/" do
  params[:status] = 1

  Task.create({
    task: params[:task],
    status: params[:status]
    })

  # params.to_s
  redirect("/")
end

patch "/:id" do |id|
  task = Task.get(id)
  
  if task.status == 1
    task.status = 2
  else
    task.status = 1
  end
  
  task.save
  redirect to("/")
end




