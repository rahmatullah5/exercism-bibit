=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end
class Bob
  def self.hey(remark)
    remark = remark.strip.gsub(/[^a-zA-Z0-9!?]/, '')
    not_words = remark.scan(/([\w\d])/).length.zero?
    capitalized = !remark.scan(/[A-Z]/).length.zero? && remark.upcase == remark
    end_with_question_mark = remark.end_with? '?'

    if !capitalized && end_with_question_mark
      'Sure.'
    elsif not_words
      'Fine. Be that way!'
    elsif capitalized && end_with_question_mark
      "Calm down, I know what I'm doing!"
    elsif capitalized
      "Whoa, chill out!"
    else
      'Whatever.'
    end
  end
end
