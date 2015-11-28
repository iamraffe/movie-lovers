require 'imdb'

class IMDBHandler
  def search(query, limit, key = 'movies')
    Imdb::Search.new(query).send(key).take(limit)
  end
end
