class AddMoreAnswersToAskings < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :answer_a_correct, :string
    add_column :askings, :answer_b_correct, :string
    add_column :askings, :answer_c_correct, :string
    add_column :askings, :answer_d_correct, :string
    add_column :askings, :answer_e_correct, :string
    add_column :askings, :answer_f_correct, :string
  end
end
