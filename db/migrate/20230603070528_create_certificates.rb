class CreateCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :certificates do |t|
      t.references :course_enrollment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
