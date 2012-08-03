class CreateGameweeks < ActiveRecord::Migration
  def self.up
    create_table :gameweeks do |t|
      t.date :start_date
      t.time :start_time
      t.integer :number_of_fixtures
      t.timestamps
    end
  end

  def self.down
    drop_table :gameweeks
  end
end
