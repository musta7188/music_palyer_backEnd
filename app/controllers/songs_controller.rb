class SongsController < ApplicationController

  def index 
    songs = Song.all 
    render json: songs
  end

  def create 
    song = Song.new(song_params)

    if song
      song.save
      render json: song 
    else 
      render json: {error: "Song not valid "}
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: song
end 
  private 

  def song_params 
    params.require(:song).permit(:title, :artist, :album, :artist_img, :album_img, :song_link)
  end
end
