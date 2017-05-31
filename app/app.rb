require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    
  end

  get '/links' do
    Link.all
  end

end
