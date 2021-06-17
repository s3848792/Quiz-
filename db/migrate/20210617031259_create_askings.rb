class CreateAskings < ActiveRecord::Migration[5.0]
  def change
    create_table :askings do |t|
      t.string :question
      t.string :description
      # t.string :answers
      t.string :multiple_correct_answers
      t.string :correct_answers

      t.timestamps
    end
  end
end
