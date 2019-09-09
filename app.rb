require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  get '/add' do
    erb(:add)
  end

  post '/add' do
    Bookmarks.add(params[:website])
    redirect('/')
  end

  run! if app_file == $0

end
