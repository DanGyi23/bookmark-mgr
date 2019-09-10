require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

  post '/add' do
    Bookmarks.add(url: params[:website], title: params[:bookmark_title])
    redirect('/')
  end

  # post '/delete' do
  #   Bookmarks.delete(id: params[:id])
  # end

  run! if app_file == $0

end
