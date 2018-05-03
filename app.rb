require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:p1_name])
    $p2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1 = $p1
    @p2 = $p2
    erb(:play)
  end

  get '/attack' do
    @p1 = $p1
    @p2 = $p2
    @p1.attack(@p2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
