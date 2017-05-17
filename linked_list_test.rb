require 'minitest/autorun'
require './linked_list'
require 'minitest/pride'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert LinkedList
  end

  def test_a_new_list_has_zero_elements
    list = LinkedList.new
    assert_equal 0, list.count
  end

  def test_a_list_adds_an_element
    list = LinkedList.new
    list.push(99)
    assert_equal 1, list.count
  end

  def test_a_list_adds_two_elements
    list = LinkedList.new
    list.push(99)
    list.push(10)
    assert_equal 2, list.count
  end

  def test_a_list_adds_five_elements
    list = LinkedList.new
    5.times do
      list.push(rand(10))
    end
    assert_equal 5, list.count
  end

  def test_a_list_pushes_on_the_end
    list = LinkedList.new
    [10,20,30,40,50].each do |value|
      list.push(value)
    end
    assert_equal 10, list.head.data
    assert_equal 50, list.tail.data
  end

  def test_a_list_finds_an_element_at_a_position
    list = LinkedList.new
    list.push(10)
    assert_equal 10, list.at(0).data
  end

  def test_a_list_prepends_an_element
    list = LinkedList.new
    list.push(10)
    list.prepend(20)
    assert_equal 20, list.head.data
    assert_equal 10, list.tail.data
  end
end
