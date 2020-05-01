class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :artist_img
      t.string :album_img
      t.string :song_link
      t.timestamps
    end
  end
end
