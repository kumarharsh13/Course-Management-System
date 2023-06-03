class CreateSyllabuses < ActiveRecord::Migration[7.0]
  def change
    create_table :syllabuses, primary_key: [:course_id, :module_no, :video_link] do |t|
      t.references :course, null: false, foreign_key: true
      t.bigint :module_no, null: false 
      t.string :moudle_name, null: false
      t.string :video_link, null: false
      t.timestamps
    end
  end
end
