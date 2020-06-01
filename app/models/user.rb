class User < ApplicationRecord
 has_many :playlists
 has_many :songs, through: :playlists
has_secure_password
validates :username, presence: {message: "you must have a username"}
validates :username, length: { minimum: 2 }
validates :username, uniqueness:  {message: "this username is taken"}

end
 