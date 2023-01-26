require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end


  def reverse!
    # your code here
    return @head if @head == nil || @head.next_node == nil

    current_node = @head

    @head = @tail
    @tail = current_node

    @head = reverse_node current_node

  end

  private

  def reverse_node node

    if node == nil
      return nil
    end

    n = node.next_node
    node.next_node = node.prev_node
    node.prev_node = n

    if node.prev_node == nil
      return node
    end

    return reverse_node n

  end

end
