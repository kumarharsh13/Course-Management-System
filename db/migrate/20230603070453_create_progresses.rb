class CreateProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :progresses, primary_key: [:course_enrollment_id] do |t|
      t.references :course_enrollment, null: false, foreign_key: true
      t.decimal :total_duration, null: false, precision: 10, scale: 2
      t.decimal :watch_duration, null: false, precision: 10, scale: 2
      t.decimal :completion_percentage, null: false, precision: 10, scale: 2
      t.timestamps
    end
  end
end
