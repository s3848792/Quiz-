class AddCorrectAnswerToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :correct_answer, :string
  end
end
