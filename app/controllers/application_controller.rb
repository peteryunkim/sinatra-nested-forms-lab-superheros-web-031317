require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
    	erb :super_hero
    end

    post '/teams' do
    	@team = Team.new(params[:team])

    	@hero = Hero.new(params[:team][:member][0])
    	@hero2 = Hero.new(params[:team][:member][1])

    	@hero3 = Hero.new(params[:team][:member][2])


    	erb :team
    end
end
