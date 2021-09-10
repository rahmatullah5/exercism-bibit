=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
class Bob
  attr_reader :remark

  def initialize(remark)
    @remark = remark.strip.gsub(/[^a-zA-Z0-9!?]/, '')
  end

  def self.hey(remark)
    new(remark).hey
  end

  def hey
    if !capitalized? && end_with_question_mark?
      'Sure.'
    elsif does_not_contain_alphanumeric?
      'Fine. Be that way!'
    elsif capitalized? && end_with_question_mark?
      "Calm down, I know what I'm doing!"
    elsif capitalized?
      "Whoa, chill out!"
    else
      'Whatever.'
    end
  end

  private
  def capitalized?
    !remark.scan(/[A-Z]/).length.zero? && remark.upcase == remark
  end

  def end_with_question_mark?
    remark.end_with? '?'
  end

  def does_not_contain_alphanumeric?
    remark.scan(/([\w\d])/).length.zero?
  end
end
