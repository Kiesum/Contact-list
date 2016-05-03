# Homepage (Root path)
get '/' do
  @contacts = Contact.all
  erb :index
end

post '/' do 
  @contact = Contact.new(
    firstname: params[:firstname],
    lastname: params[:lastname],
    email: params[:email]
    )

  @contact.save 
  redirect '/'
end
