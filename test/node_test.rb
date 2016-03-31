require 'minitest/autorun'
require 'minitest/pride'
require_relative './lib/node'

class NodeTest < Minitest::Test

  def test_node_contains_plop
    node = Node.new
    data = "plop"
    assert_equal "plop", node.data
  end

  def test_next_node_is_nil
    node = Node.new
    assert_equal nil, node.next_node
  end


end
