class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.bigint   :doctor_id
      t.bigint   :user_id
      t.text :description
      t.date :answer_date
      t.boolean :is_approve
      t.boolean :is_reject
      
      t.timestamps
    end
  end
end
