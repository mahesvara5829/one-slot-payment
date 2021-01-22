class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :store_id,null:false, numericality: { other_than: 1 } 
      t.integer :kisyu_id,null:false, numericality: { other_than: 1 } 
      t.string :medal,null:false
      t.string :ball,null:false
      t.integer :month_id,null:false, numericality: { other_than: 1 } 
      t.integer :day_id,null:false, numericality: { other_than: 1 } 
      t.string :memo,null:false
      t.integer :user_id,null:false

      t.timestamps
    end
  end
end
