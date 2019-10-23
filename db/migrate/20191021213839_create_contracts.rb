class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.integer :artist_id
      t.integer :beat_id
      t.integer :price

      t.timestamps
    end
  end
end
