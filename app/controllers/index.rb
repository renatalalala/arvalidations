get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/event/create' do
  #TODO IMPLEMENT ME
  erb :new_event
end

post '/event/create' do
  Event.create([params])
  redirect '/'
end
