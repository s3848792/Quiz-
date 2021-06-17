class AddFieldsToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :explanation, :string
    add_column :askings, :category, :string
    add_column :askings, :tip, :string
    add_column :askings, :difficulty, :string
  end
end
