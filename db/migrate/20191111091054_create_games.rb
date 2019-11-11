class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :game_name
      t.string :game_description
      t.string :game_image
      t.timestamps
    end
  end
end
