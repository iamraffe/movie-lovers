require 'imdb'

class IMDBHandler
  def search(query, key = 'movies')
    imdb_response = Array.new
    Imdb::Search.new(query).send(key)
  end
end
