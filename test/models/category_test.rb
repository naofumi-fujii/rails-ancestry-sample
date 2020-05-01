require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "nested category" do
    f = ->(node) { Category.create! :name => "wakuwaku", parent: node }
    node = f.call(nil)
    5.times.each do
      node = f.call(node)
    end

    pp Category.all
  end
end
