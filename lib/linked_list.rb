require_relative "node"

class LinkedList

attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      find_tail.next_node = Node.new(data)
    end
  end

  def find_tail
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
  current_node
  end

  def count
    current_node = @head
    counter = 1
    while current_node.next_node != nil
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  # def to_string
  #   @head.data
  # end

  def to_string
    current_node = @head
    string_list = []
    while current_node.next_node != nil
      string_list << current_node.data
      current_node = current_node.next_node
    end
    string_list << current_node.data
    string_list.join(" ")
  end

  def prepend(data)
    head = Node.new(data)
    head.next_node = @head
    @head = head
    data
  end

  def insert(insert_after, data)
    current_node = @head
    new_node = Node.new(data)
    until current_node
    end
  end

end
