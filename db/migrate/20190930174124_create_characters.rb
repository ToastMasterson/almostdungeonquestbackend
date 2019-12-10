class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :life_value
      t.integer :strength
      t.integer :agility
      t.integer :armor
      t.integer :luck
      # t.string :special_ability
      t.string :title
      t.string :character_image
      t.timestamps
    end
  end
end
