class Day < ActiveRecord::Base
  #belongs_to :user
  attr_accessible :exercises, :date, :month #:user_id
  has_many :workouts, :through => :user
  def self.search(search)
    if search
      where('month LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
