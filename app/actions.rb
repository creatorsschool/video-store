# coding: utf-8
get '/' do
  @videos = Video.all
  erb :index
end

# Routes for show

get '/:id' do
end

# Routes for edit

get '/:id/edit' do
	@videos = Video.find(params[:id])
	erb :edit
end

post '/:id/edit' do
	@videos = Video.where(id: params[:id]).update_all(title: params[:title], year: params[:year], director: params[:director])
	redirect "/"
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
  redirect '/', notice: 'Removed'
end
