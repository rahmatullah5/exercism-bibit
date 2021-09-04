=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
module BeerSong
  def recite(start_position, decrement)
    response = ""
    decrement.times do |i|
      if start_position > 2
        response << <<~TEXT
          #{start_position} bottles of beer on the wall, #{start_position} bottles of beer.
          Take one down and pass it around, #{start_position - 1} bottles of beer on the wall.
        TEXT
      elsif start_position > 1
        response << <<~TEXT
          2 bottles of beer on the wall, 2 bottles of beer.
          Take one down and pass it around, 1 bottle of beer on the wall.
        TEXT
      elsif start_position.positive?
        response << <<~TEXT
          1 bottle of beer on the wall, 1 bottle of beer.
          Take it down and pass it around, no more bottles of beer on the wall.
        TEXT
      else
        response << <<~TEXT
          No more bottles of beer on the wall, no more bottles of beer.
          Go to the store and buy some more, 99 bottles of beer on the wall.
        TEXT
        start_position = 100
      end
      start_position -= 1
      response += "\n" if i != decrement - 1
    end

    response
  end
end

BeerSong.extend BeerSong
