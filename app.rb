require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'json'
require './environment'
# We're going to need to require our class files
require_relative('./models/movie.rb')

get '/' do
  @title = 'Movie Trivia'
  erb :'static_pages/home', layout: :app
end

post '/movies/' do
  @title = 'Movie Trivia'
  @movies = Movie.new.find_by(params[:query])
  @rand = rand(@movies.size)
  @param = 'cast_members'
  erb :'movies/index', layout: :app
end

