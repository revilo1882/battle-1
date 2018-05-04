require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    p2 = Player.new(params[:p2_name])
    @game = Game.create(p1, p2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    if @game.player_one.health <= 0 || @game.player_two.health <= 0
      erb(:win)
    else
      erb(:attack)
    end
  end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
