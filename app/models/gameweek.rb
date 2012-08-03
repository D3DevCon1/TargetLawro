class Gameweek < ActiveRecord::Base
  attr_accessible :start_date, :start_time, :number_of_fixtures, :fixtures_attributes, :prediction_attributes
  has_many :fixtures, :dependent => :destroy
  accepts_nested_attributes_for :fixtures
end
