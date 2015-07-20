# coding: utf-8
get '/' do
	@videos = Video.all
	if params.key?('sort')
		@videos = @videos.sort_by do |video|
		video.year
	end

	if params[:sort] == "desc"
		@videos = @videos.reverse
	end
    end
  
  erb :index
end

# Routes for show

get '/:id' do
    @post = Video.find(params[:id])
    erb :show
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
  Video.destroy(params[:id])
  redirect '/', notice: 'Removed'
end




