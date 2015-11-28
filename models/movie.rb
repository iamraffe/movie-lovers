require_relative('../lib/imdb_handler.rb')

class Movie
  def initialize(db = IMDBHandler.new)
    @db = db
  end

  def find_by(query, limit = 9)
    @db.search(query, limit)
  end
end
