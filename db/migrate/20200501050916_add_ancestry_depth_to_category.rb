class AddAncestryDepthToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :ancestry_depth, :integer
  end
end
