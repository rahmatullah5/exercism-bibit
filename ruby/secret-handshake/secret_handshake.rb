=begin
Write your code for the 'Secret Handshake' exercise in this file. Make the tests in
`secret_handshake_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/secret-handshake` directory.
=end

class SecretHandshake
  attr_reader :i
  attr_accessor :arr

  SECRET_CODE = [
    'wink',
    'double blink',
    'close your eyes',
    'jump'
  ].freeze

  def initialize(i)
    @i = i.to_s(2).to_i.digits unless i.is_a? String
    @arr = []
  end

  def commands
    return @arr if @i.nil?

    @arr = @i[0..3].each_with_index.map do |i, index|
      SECRET_CODE[index] if i != 0
    end.compact

    @i.length > 4 ? @arr.reverse : @arr
  end
end
