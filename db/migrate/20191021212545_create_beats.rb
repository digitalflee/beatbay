class CreateBeats < ActiveRecord::Migration[6.0]
  def change
    create_table :beats do |t|
      t.string :name
      t.integer :producer_id 
      t.integer :price 

      t.timestamps
    end
  end
end
