require 'sinatra/base'
require './lib/bookmarks'
require './database_connection_setup'


class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmarks.all
    erb(:index)
  end

  post '/add' do
    Bookmarks.add(url: params[:url], title: params[:title])
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
