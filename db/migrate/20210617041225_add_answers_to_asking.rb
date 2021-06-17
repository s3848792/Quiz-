class AddAnswersToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :answer_a, :string
    add_column :askings, :answer_b, :string
    add_column :askings, :answer_c, :string
    add_column :askings, :answer_d, :string
    add_column :askings, :answer_e, :string
    add_column :askings, :answer_f, :string
  end
end
