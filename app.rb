require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @action = session[:action]
    @player_2_hp = $player_2.hitpoints
    erb :play
  end

  post '/attack' do
    session[:action] = 'attacked'
    $game.attack($player_2)
    redirect '/play'
  end

  run! if app_file == $0
end
