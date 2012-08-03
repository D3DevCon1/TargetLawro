class Fixture < ActiveRecord::Base
  attr_accessible :away_team, :gameweek_id, :home_team, :match_date, :match_time, :prediction_attributes
  belongs_to :gameweek
  has_one :prediction, :dependent => :destroy
  accepts_nested_attributes_for :prediction
end
