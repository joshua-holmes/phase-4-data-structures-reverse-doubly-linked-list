require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    current_node = tail
    until current_node == head do
      next_node = current_node.prev_node
      current_node.prev_node = current_node.next_node
      current_node.next_node = next_node
      current_node = next_node
    end
    self.head = tail
    self.tail = current_node
    if tail
      tail.prev_node = tail.next_node
      tail.next_node = nil
    end
  end
end
