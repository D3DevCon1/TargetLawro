class Fixture < ActiveRecord::Base
  attr_accessible :away_team, :gameweek_id, :home_team, :match_date, :match_time, :home_goals, :away_goals, :prediction_attributes
  has_one :prediction, :dependent => :destroy
  accepts_nested_attributes_for :prediction
  belongs_to :gameweek
end
