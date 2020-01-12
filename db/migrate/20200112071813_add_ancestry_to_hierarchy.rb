class AddAncestryToHierarchy < ActiveRecord::Migration[5.2]
  def change
      add_column :hierarchies, :ancestry, :string
    add_index :hierarchies, :ancestry
  end
end