class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.float :ques1
      t.float :ques2
      t.float :ques3
      t.float :ques4
      t.float :ques5
      t.float :ques6
      t.float :ques7
      t.float :ques8
      t.float :ques9
      t.float :ques10
      t.float :ques11
      t.float :ques12

      t.timestamps
    end
  end
end
