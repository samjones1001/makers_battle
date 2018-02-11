require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    session[:action] = nil
    redirect '/play'
  end

  get '/play' do
    @action = session[:action]
    p @action
    erb :play
  end

  post '/attack' do
    session[:action] = 'attacked'
    @game.attack(@game.opponent)
    @game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
