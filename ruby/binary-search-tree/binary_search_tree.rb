=begin
Write your code for the 'Binary Search Tree' exercise in this file. Make the tests in
`binary_search_tree_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/binary-search-tree` directory.
=end

class Bst
  attr_accessor :right, :left
  attr_reader :data

  def initialize(data = nil)
    @data = data
  end

  def insert(value)
    if value > data
      insert_right(value)
    else
      insert_left(value)
    end
  end

  def each(&block)
    return enum_for(:each) unless block_given?

    left&.each(&block)

    yield(data)

    right&.each(&block)
  end

  private
  def insert_left(value)
    if left
      left.insert(value)
    else
      @left = Bst.new(value)
    end
  end

  def insert_right(value)
    if right
      right.insert(value)
    else
      @right = Bst.new(value)
    end
  end
end
