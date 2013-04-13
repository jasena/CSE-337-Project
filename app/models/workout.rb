class Workout < ActiveRecord::Base
  #belongs_to :user
  attr_accessible :duration, :kind, :name, :workout_date, :user_id
  has_one :day
  belongs_to :user
end
