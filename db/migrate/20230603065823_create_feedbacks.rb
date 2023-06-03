class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks, primary_key: [:user_id, :course_id]  do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :rating, null: false
      t.text :review, null: false
      t.timestamps
    end
  end
end
