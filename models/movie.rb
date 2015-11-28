require_relative('../lib/imdb_handler.rb')
require 'pry'
class Movie
  def initialize(db = IMDBHandler.new)
    @db = db
  end

  def find_by(query, limit = 9, movies = Array.new)
    db_response = @db.search(query)
    db_response.each do |movie|
      movies.push(movie) unless movie.poster.nil?
      break if movies.size == limit
    end
    movies
  end
end
