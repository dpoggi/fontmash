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

  # Helpers
  helpers do
    # Helper to pop an item off the front of an array
    def pop_front(arr)
      if arr.length > 0
        ret = arr[0]
        arr.delete_at 0
        ret
      end
    end
  end

  # Default view, shows the set of common ASCII characters
  get '/' do
    @rows = [('A'..'M'), ('N'..'Z'),
             ('a'..'m'), ('n'..'z'),
             ('0'..'9'),
             ('!'..'-'), ('.'..'/').to_a + (':'..'@').to_a]
    haml :index
  end

  # Handles custom text inputted by the user.
  post '/' do
    input_array = params['text-field'].split(//)
    num_rows = input_array.length / 13 + 1
    @rows = Array.new(num_rows) {Array.new(13) {pop_front input_array}} 
    haml :index
  end

  not_found do
    redirect '/'
  end

end
