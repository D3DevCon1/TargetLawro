class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :user_id
      t.integer :fixture_id
      t.integer :home_goals
      t.integer :away_goals

      t.timestamps
    end
  end
end
