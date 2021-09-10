=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end
class BeerSong
  def self.recite(start_position, decrement)
    start_position.downto(start_position - decrement + 1).map { |i| populate_response(i) }.join("\n")
  end

  def self.populate_response(current_position)
    case current_position
    when 2
      <<~TEXT
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      TEXT
    when 1
      <<~TEXT
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      TEXT
    when 0
      <<~TEXT
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      TEXT
    else
      <<~TEXT
        #{current_position} bottles of beer on the wall, #{current_position} bottles of beer.
        Take one down and pass it around, #{current_position - 1} bottles of beer on the wall.
      TEXT
    end
  end
end
