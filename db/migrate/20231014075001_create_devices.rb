class CreateDevices < ActiveRecord::Migration[7.1]
  def change
    create_table :devices do |t|
      t.integer :flag
      t.references :maker, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :storage, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.datetime :release_at
      t.string :os_version
      t.integer :price
      t.text :memo

      t.timestamps
    end
  end
end
