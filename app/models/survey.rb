class Survey < ActiveRecord::Base
  belongs_to :user
  attr_accessible :ques1, :ques10, :ques11, :ques12, :ques2, :ques3, :ques4, :ques5, :ques6, :ques7, :ques8, :ques9, :user_id
end
