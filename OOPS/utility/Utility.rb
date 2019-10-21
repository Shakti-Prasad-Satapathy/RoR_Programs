class Node
  attr_accessor :value, :next, :prev

  def initialize(prev_node, value, next_node)
    @value = value
    @next = next_node
    @prev = prev_node
  end
end

class Utility
end
