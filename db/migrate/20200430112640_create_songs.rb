class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :genre
      t.string :img_url
      t.timestamps
    end
  end
end
