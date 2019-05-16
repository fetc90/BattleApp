require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $first_player = Player.new(params[:first_player])
    $second_player = Player.new(params[:second_player])
    redirect '/play'
  end

  get '/play' do
	  @first_player = $first_player.name
  	@second_player = $second_player.name
    erb :play
  end

  get '/attack' do
  	@first_player = $first_player
  	@second_player = $second_player
    @first_player.attack(@second_player)
  	erb :attack
  end

end
