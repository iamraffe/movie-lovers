require_relative "../models/movie.rb"

require "spec_helper"
require "pry"

describe Movie do
  let(:movies) {[
    {id: "3382466", title: "Funny (2016)", url: "http://akas.imdb.com/title/tt3382466/combined"},
    {id: "4295724", title: "Funny", url: "http://akas.imdb.com/title/tt4295724/combined"},
    {id: "0097403", title: "Funny (1988)", url: "http://akas.imdb.com/title/tt0097403/combined"},
    {id: "1767372", title: "Lío en Broadway (2014)", url: "http://akas.imdb.com/title/tt1767372/combined"},
    {id: "0073026", title: "Funny Lady (1975)", url: "http://akas.imdb.com/title/tt0073026/combined"},
    {id: "0050419", title: "Una cara con ángel (1957)", url: "http://akas.imdb.com/title/tt0050419/combined"},
    {id: "0062994", title: "Funny Girl (Una chica divertida) (1968)", url: "http://akas.imdb.com/title/tt0062994/combined"},
    {id: "0808279", title: "Funny Games (2007)", url: "http://akas.imdb.com/title/tt0808279/combined"},
    {id: "1201167", title: "Hazme reír (2009)", url: "http://akas.imdb.com/title/tt1201167/combined"}
  ]}

  it "should return 9 movies" do
    imdb_response = instance_double("Movie", :find_by => movies)
    expect(imdb_response.find_by("funny").size).to eq(9)
  end
end
