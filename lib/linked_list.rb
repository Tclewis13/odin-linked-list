require_relative 'node'
require 'pry-byebug'

class Linked_List
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def append(value)
    if head.nil?
      self.head = Node.new(value, nil)
    elsif head.next_node.nil?
      head.next_node = Node.new(value, nil)
    else
      temp_node = head
      temp_node = temp_node.next_node until temp_node.next_node.nil?
      temp_node.next_node = Node.new(value, nil)
    end
  end

  def prepend(value)
    self.head = if head.nil?
                  Node.new(value, nil)
                else
                  Node.new(value, head)
                end
  end

  def size
    return 0 if head.nil?

    temp_node = head
    count = 1
    until temp_node.next_node.nil?
      count += 1
      temp_node = temp_node.next_node
    end
    count
  end

  def tail
    return nil if head.nil?

    temp_node = head
    temp_node = temp_node.next_node until temp_node.next_node.nil?
    temp_node
  end

  def at(index)
    return nil if head.nil?

    temp_node = head
    count = 0
    until count == index
      count += 1
      return nil if temp_node.next_node.nil?

      temp_node = temp_node.next_node
    end
    temp_node
  end

  def pop
    return nil if head.nil?

    temp_node = head
    temp_node = temp_node.next_node until temp_node.next_node.next_node.nil?
    temp_node.next_node = nil
  end

  def contains?(value)
    return false if head.nil?

    temp_node = head
    until temp_node.next_node.nil?
      temp_node = temp_node.next_node
      return true if temp_node.value == value
    end
    false
  end

  def find(value)
    return nil if head.nil?

    temp_node = head
    count = 0
    until temp_node.next_node.nil?

      return count if temp_node.value == value

      temp_node = temp_node.next_node
      count += 1
    end
    nil
  end

  def to_s
    return nil if head.nil?

    temp_node = head
    until temp_node.nil?
      print "(#{temp_node.value}) -> "
      temp_node = temp_node.next_node
    end
    puts ' nil'
  end
end
