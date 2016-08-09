class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :category
      t.references :word

      t.timestamps
    end
  end
end
