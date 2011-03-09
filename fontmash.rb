# Controller/Routes
class FontMash < Sinatra::Base

  # Sinatra configuration
  enable :static
  set :public, 'public'

  # Haml configuration
  set :haml, {:format => :html5}

  get '/' do
    haml :index
  end

  not_found do
    redirect '/'
  end

end
