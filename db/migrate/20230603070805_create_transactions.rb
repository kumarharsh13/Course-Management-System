class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.decimal :total_amount, null: false, precision: 10, scale: 2
      t.boolean :payment_status, null: false
      t.timestamps
    end
  end
end
