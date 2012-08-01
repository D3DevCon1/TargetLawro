class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.integer :gameweek_id
      t.date :match_date
      t.time :match_time
      t.string :home_team
      t.string :away_team
      t.integer :home_goals
      t.integer :away_goals

      t.timestamps
    end
  end
end
