class Fixture < ActiveRecord::Base
  attr_accessible :away_goals, :away_team, :gameweek_id, :home_goals, :home_team, :match_date, :match_time
end
