require "sinatra"
require "data_mapper"
require "pony"

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

class Contact
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :address, String
  property :department, String
  property :message, Text
end

Contact.auto_upgrade!

get "/" do
  erb :index, layout: :default
end

post "/contact" do

  Contact.create({
    name: params[:name],
    address: params[:address],
    department: params[:department],
    message: params[:message]
    })

  Pony.mail(to: "dkroondijk@hotmail.com",
    from: "dkroondijk@hotmail.com", 
    reply_to: "dkroondijk@hotmail.com",
    subject: "#{params[:name]}, thanks for your comment!",
    body: "Thank you for your comment! #{params[:message]}",
    via: :smtp,
    via_options: {
      address: "smtp.gmail.com",
      port: "587",
      user_name: "answerawesome",
      password: "Sup3r$ecret",
      authentication: :plain,
      enable_starttls_auto: true
      })
  
  redirect to("/contact")
end

get "/contact" do
  @sales_contacts = Contact.all(:department => "sales")
  @marketing_contacts = Contact.all(:department => "marketing")
  @technical_contacts = Contact.all(:department => "technical")

  # @sales = @sales_contacts.get(1)
  # @marketing = @marketing_contacts.get(1)

  erb :contact, layout: :default
end







