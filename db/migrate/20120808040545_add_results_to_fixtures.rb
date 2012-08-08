class AddResultsToFixtures < ActiveRecord::Migration
  def change
    add_column :fixtures, :home_goals, :integer
    add_column :fixtures, :away_goals, :integer
  end
end
