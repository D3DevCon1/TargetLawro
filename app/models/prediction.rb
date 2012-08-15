class Prediction < ActiveRecord::Base
  attr_accessible :away_goals, :fixture_id, :home_goals, :user_id
  belongs_to :fixture
  belongs_to :user
end
