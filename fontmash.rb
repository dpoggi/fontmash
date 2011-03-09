# Controller/Routes
class FontMash < Sinatra::Base

  # Sinatra configuration
  enable :static
  set :public, 'public'

  get '/' do
    erb :index
  end

  not_found do
    redirect '/'
  end

end
