class Day < ActiveRecord::Base
  attr_accessible :exercises, :date
  has_many :workouts
end
