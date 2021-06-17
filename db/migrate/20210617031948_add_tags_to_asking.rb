class AddTagsToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :tags, :string
  end
end
