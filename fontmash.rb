# Controller/Routes
class FontMash < Sinatra::Base

  # Configure Sinatra
  configure do
    disable :run
    enable :static
    set :public, File.join(File.dirname(__FILE__), 'public')
    set :views, File.join(File.dirname(__FILE__), 'views')

    # Configure Haml
    set :haml, {:format => :html5}
  end

  # Default view, shows the set of common ASCII characters
  get '/' do
    @rows = [('A'..'M'), ('N'..'Z'),
             ('a'..'m'), ('n'..'z'),
             ('0'..'9'),
             ('!'..'-'), ('.'..'/').to_a + (':'..'@').to_a]
    haml :index
  end

  # Handles custom text inputted by the user. Not done.
  post '/' do
    @rows = [('0'..'9')]
    haml :index
  end

  not_found do
    redirect '/'
  end

end
