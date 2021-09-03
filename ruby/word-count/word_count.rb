=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
require 'pry'
class Phrase
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def word_count
    word_group = Hash.new(0)
    word_map.each do |word|
      word_group[word] += 1
    end

    word_group
  end

  def word_map
    words.downcase.scan(/\b[\w']+\b/)
  end
end
