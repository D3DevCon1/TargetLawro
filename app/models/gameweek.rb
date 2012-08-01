class Gameweek < ActiveRecord::Base
  attr_accessible :fixtures, :gameweek_no, :start_date, :start_time
   
  belongs_to :user
end
