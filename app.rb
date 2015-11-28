require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require './environment'
# We're going to need to require our class files
require_relative('./models/movie.rb')

get '/' do
  erb :'movies/index', layout: :app
end
