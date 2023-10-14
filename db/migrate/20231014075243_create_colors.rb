class CreateColors < ActiveRecord::Migration[7.1]
  def change
    create_table :colors do |t|
      t.text :system_name
      t.text :display_name

      t.timestamps
    end
  end
end
