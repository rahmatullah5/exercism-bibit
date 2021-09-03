=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
require 'pry'
class Bob
  def self.hey(remark)
    # binding.pry
    remark = remark.strip.gsub(/[^a-zA-Z0-9!?]/, '')
    not_words = remark.scan(/([\w\d])/).length == 0
    capitalized = remark.scan(/[a-z]/).length == 0 && remark.scan(/[A-Z]/).length > 0
    question_mark = remark[-1] == '?'

    if !capitalized && question_mark
      'Sure.'
    elsif not_words
      'Fine. Be that way!'
    elsif capitalized && question_mark
      "Calm down, I know what I'm doing!"
    elsif capitalized
      "Whoa, chill out!"
    else
      'Whatever.'
    end

    # 'Whatever.'
  end
end
