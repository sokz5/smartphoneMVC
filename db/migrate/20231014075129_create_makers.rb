class CreateMakers < ActiveRecord::Migration[7.1]
  def change
    create_table :makers do |t|
      t.text :name

      t.timestamps
    end
  end
end
