class CreateCourseEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :course_enrollments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.datetime :valid_till, null: false
      t.timestamps
    end
  end
end
