class LinkedList
  attr_reader :head

  def count
    if !head
      0
    else
      head.count
    end
  end

  def at(position)
    if !head
      nil
    else
      head.at(position)
    end
  end

  def prepend(new_item)
    new_node = Node.new(new_item)
    if !head
      @head = new_node
    else
      @head = new_node
      new_node.link = head
    end
  end

  def tail
    if !head
      nil
    else
      head.tail
    end
  end

  def push(new_item)
    new_node = Node.new(new_item)

    if !head
      @head = new_node
    else
      head.push(new_node)
    end
  end
end

class Node
  attr_reader :data
  attr_accessor :link

  def initialize(new_data)
    @data = new_data
  end

  def at(position)
    if position == 0
      self
    else
      link.at(position - 1)
    end
  end

  def push(new_node)
    if !link
      @link = new_node
    else
      link.push(new_node)
    end
  end

  def count
    if !link
      1
    else
      1 + link.count
    end
  end

  def tail
    if !link
      self
    else
      link.tail
    end
  end
end
