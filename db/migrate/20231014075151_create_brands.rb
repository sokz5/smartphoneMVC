class CreateBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :brands do |t|
      t.text :name
      t.references :maker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
