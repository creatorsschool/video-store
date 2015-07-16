get '/' do
  @videos = Video.all
  erb :index
end

# Routes for show

get '/:id' do
end

# Routes for edit

get '/:id/edit' do
end

post '/:id' do
end

# Routes for new

get '/new' do
end

post '/create' do
end

# Routes for remove

post '/:id/delete' do
end
