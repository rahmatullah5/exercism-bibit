=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(drop)
    response = ""
    response << "Pling" if (drop % 3).zero?
    response << "Plang" if (drop % 5).zero?
    response << "Plong" if (drop % 7).zero?
    response.empty? ? drop.to_s : response
  end
end
