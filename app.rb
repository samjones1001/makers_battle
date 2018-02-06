require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @action = session[:action]
    erb :play
  end

  post '/attack' do
    session[:action] = 'attacked'
    @game = $game
    @game.attack(@game.player_2)
    redirect '/play'
  end

  run! if app_file == $0
end
