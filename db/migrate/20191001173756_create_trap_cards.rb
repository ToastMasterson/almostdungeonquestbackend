class CreateTrapCards < ActiveRecord::Migration[5.2]
  def change
    create_table :trap_cards do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :kind
      t.timestamps
    end
  end
end
