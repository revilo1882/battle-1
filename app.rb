require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    @p2_hp = 100
    erb(:play)
  end

  get '/attack' do
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end
