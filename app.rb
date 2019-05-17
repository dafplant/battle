require 'sinatra/base'
# require 'capybara'
# require 'capybara/rspec'
# require 'rspec'
require '/Users/student/Projects/battle/lib/player.rb'
require '/Users/student/Projects/battle/lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_2_hp = @game.player_2.hit_points
    erb :play
  end

  get '/attack' do
    @game = $game
    @p2_hp = @game.attack(@game.player_2)
    erb :attack
  end

  run! if app_file == $0
end
