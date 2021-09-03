=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
require 'pry'
class Clock
  attr_accessor :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = (minute + (hour % 24) * 60) % 1440
  end

  def to_s
    "#{format('%02d', (@minutes / 60) % 24)}:#{format('%02d', @minutes % 60)}"
  end

  def +(other)
    @minutes += other.minutes
    self
  end

  def -(other)
    @minutes -= other.minutes
    self
  end

  def ==(other)
    other.minutes == @minutes
  end
end
