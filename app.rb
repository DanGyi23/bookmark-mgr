require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmarks'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base

  enable :sessions
  register Sinatra::Flash

  get '/' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

  post '/add' do
    flash[:notice] = "You must submit a valid URL. Try again..." unless Bookmarks.url_valid?(url: params[:url])
    redirect('/')
  end

  post '/delete' do
    Bookmarks.delete(id: params[:Delete])
    redirect('/')
  end

  post '/:id' do
    Bookmarks.update(id: params[:id], url: params[:url], title: params[:title])
    redirect('/')
  end

  get '/:id/edit' do
    @bookmark = Bookmarks.find(id: params[:id])
    erb(:"/edit")
  end

  run! if app_file == $0

end
