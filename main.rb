# each node properties
class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

# linked list functions
class LinkedList
  attr_accessor :list

  def initialize
    @head = nil
    @list = []
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
      @list.push(value)
    else
      current = @head
      current.next_node = value
      list.push(current.next_node)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
      @list.push(value)
    else
      @list.unshift(value)
      @head.value = @list[0]
    end
  end

  def size
    @list.length + 1
  end

  def head
    @head.value
  end

  def tail
    nil
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
    display
  end

  def contains?(value)
    @list.any? { |ele| ele == value }
  end

  def find(value)
    if contains?(value)
      @list.index(value)
    else
      nil
    end
  end

  def insert_at(value, index)
    @list.insert(value, index)
  end

  def remove_at(index)
    @list.remove_at(index)
  end

  def display
    to_s(@list)
  end

  def to_s(current_value)
    linked_list = current_value.each do |ele|
      print "(#{ele}) -> "
    end
    print
  end
end

node = Node.new(nil)
linked_list = LinkedList.new
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)
linked_list.prepend(0)
p linked_list.display
p linked_list.find(2)
