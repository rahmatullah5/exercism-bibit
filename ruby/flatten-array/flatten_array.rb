=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

class FlattenArray
  attr_accessor :new_arr

  def self.flatten(arr)
    new.flatten(arr)
  end

  def initialize
    @new_arr = []
  end

  def flatten(arr)
    arr.each do |v|
      next if v.nil?

      if v.is_a? Array
        flatten(v)
      else
        @new_arr << v
      end
    end
    new_arr
  end
end
