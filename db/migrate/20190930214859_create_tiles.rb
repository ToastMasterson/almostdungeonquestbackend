class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.string :room
      t.boolean :top
      t.boolean :bottom
      t.boolean :left
      t.boolean :right
      t.boolean :is_trap
      t.string :image
      t.timestamps
    end
  end
end
