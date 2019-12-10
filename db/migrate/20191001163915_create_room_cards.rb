class CreateRoomCards < ActiveRecord::Migration[5.2]
  def change
    create_table :room_cards do |t|
      t.string :kind
      t.string :description
      t.string :image
      t.timestamps
    end
  end
end
