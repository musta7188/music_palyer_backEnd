class CreatePlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_songs do |t|
      t.integer :playlist_id
      t.integer :song_id

      t.timestamps
    end
  end
end


# post request creata song => respons obj of a song with id...we need use the id we get back and andotehr post reqyest to the palystyst song id of the playlist and song