class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :cname, null: false
      t.text :description, null: false
      t.decimal :price, null: false, precision: 10, scale: 2
      t.decimal :duration, null: false, precision: 10, scale: 2
      t.integer :rating, null: false
      t.string :category, null: false
      t.integer :validity, null: false
      t.boolean :drafting_status
      t.timestamps
    end
  end
end
