=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
require 'pry'
module BeerSong
  def recite(position, decrement)
    # start_position, decrement
    expected = ""
    decrement.times do |i|
      if position > 2
        expected << <<~TEXT
          #{position} bottles of beer on the wall, #{position} bottles of beer.
          Take one down and pass it around, #{position - 1} bottles of beer on the wall.
        TEXT
      elsif position > 1
        expected << <<~TEXT
          2 bottles of beer on the wall, 2 bottles of beer.
          Take one down and pass it around, 1 bottle of beer on the wall.
        TEXT
      elsif position > 0
        expected << <<~TEXT
          1 bottle of beer on the wall, 1 bottle of beer.
          Take it down and pass it around, no more bottles of beer on the wall.
        TEXT
      else
        expected << <<~TEXT
          No more bottles of beer on the wall, no more bottles of beer.
          Go to the store and buy some more, 99 bottles of beer on the wall.
        TEXT
        position = 100
      end
      position -= 1
      expected += "\n" if i != decrement - 1
    end

    expected
  end
end

BeerSong.extend BeerSong
