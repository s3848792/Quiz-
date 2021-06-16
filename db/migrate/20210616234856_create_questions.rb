class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :description
      t.string :answer_a_cotion
      t.string :description
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :answer_d
      t.string :answer_e
      t.string :answer_f
      t.string :correctanswer
      t.string :explanation

      t.timestamps
    end
  end
end
