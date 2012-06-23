class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :fixture_no
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
