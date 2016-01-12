get '/' do
	@urls = Url.all
  	erb :"static/index"
end

post '/urls' do
	url = Url.create(long_url: params[:long_url])

	redirect '/'
end

get '/:short_url' do
	url = Url.find_by(short_url: params[:short_url])

	unless url.nil?
		url.click_count += 1
		url.save 
		redirect url.long_url
	else
		@title = "Oops , 404 not found"
		erb :"static/not_found"
	end
end

#not_found can name whatever we want, calling not_found here 
#is just because it made sense.
# not_found do
# 	erb :not_found
# end
# get '/' do
# 	puts "[LOG] Getting /"
# 	puts "[LOG] Params: #{params.inspect}"
# 	erb :index
# end