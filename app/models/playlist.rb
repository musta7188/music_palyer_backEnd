class Playlist < ApplicationRecord
has_many :playlist_songs, dependent: :destroy
has_many :songs, through: :playlist_songs
end
