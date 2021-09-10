=begin
Write your code for the 'Linked List' exercise in this file. Make the tests in
`linked_list_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/linked-list` directory.
=end

class ListNode
  attr_accessor :next
  attr_reader :data

  def initialize(data = nil, next_node = nil)
    @data = data
    @next = next_node
  end
end

class Deque
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(element)
    node = ListNode.new(element)
    if @head.nil?
      @head = node
    else
      current = head
      current = current.next while current.next
      current.next = node
    end
  end

  def pop
    if @head.next.nil?
      current = @head.data
      @head = nil
    else
      current = head

      while current.next
        prev = current
        current = current.next
      end
      current = current.data
      prev.next = nil
    end

    current
  end

  def unshift(element)
    node = ListNode.new(element)
    node.next = head unless @head.nil?
    @head = node
  end

  def shift
    current = head.data
    @head = head.next
    current
  end
end
