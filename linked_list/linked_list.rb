class LinkedList
  attr_reader :first

  def add_node(new_node)
    node = first
    while !node.next.nil? do
      node = node.next
    end
  end
end
