class Day < ActiveRecord::Base
  #belongs_to :user
  attr_accessible :exercises, :date, :month, :year #:user_id
  has_many :workouts, :through => :user
  def self.search(search1,search2)
    if search1 and search2
      where("month LIKE ? AND year LIKE ?", "%#{search1}%", "%#{search2}%")
    else
      all
    end
  end
end
