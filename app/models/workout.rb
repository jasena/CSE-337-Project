class Workout < ActiveRecord::Base
  attr_accessible :duration, :kind, :name, :workout_date
  has_one :days
end
