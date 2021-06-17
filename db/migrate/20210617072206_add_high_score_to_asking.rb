class AddHighScoreToAsking < ActiveRecord::Migration[5.0]
  def change
    add_column :askings, :high_score, :integer
  end
end
