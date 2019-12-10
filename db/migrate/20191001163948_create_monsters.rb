class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image
      t.integer :life_value
      t.timestamps
    end
  end
end
