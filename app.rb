require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    first_player = Player.new(params[:first_player])
    second_player = Player.new(params[:second_player])
    $game = Game.new(first_player, second_player)
    redirect '/play'
  end

  get '/play' do
	  @game = $game
    erb :play
  end

  get '/attack' do
  	@game = $game
    @game.attack($game.player_two)
  	erb :attack
  end

end
