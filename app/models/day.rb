class Day < ActiveRecord::Base
  attr_accessible :exercises, :date, :month
  has_many :workouts
  def self.search(search)
    if search
      where('month LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
