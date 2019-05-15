require 'sinatra/base'

class Battle < Sinatra::Base 
enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:first_player] = params[:first_player]
    session[:second_player] = params[:second_player]
    redirect '/play'
  end
  
  get '/play' do
	@first_player = session[:first_player]
  	@second_player = session[:second_player]
    erb :play
  end

end