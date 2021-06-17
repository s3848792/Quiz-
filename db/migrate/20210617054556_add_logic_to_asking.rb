class AddLogicToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :answered, :integer
    add_column :askings, :selectedanswer, :string
  end
end
