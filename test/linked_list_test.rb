require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require "pry"

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_adds_doop
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_count_counts
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
    assert_equal 2, list.count
  end

  def test_appends_nodes_and_prepends_node
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop", list.head.data
    assert_equal "plop", list.head.next_node.data
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_it_can_find_tail
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("dop")
    assert_equal "dop", list.find_tail.data
  end

  def test_it_can_insert
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.insert("woo")
    assert_equal "dop", list.head.data
    assert_equal "woo", list.head.next_node.data
    # assert_equal "dop woo plop", list.insert(1, "woo")
  end




end
