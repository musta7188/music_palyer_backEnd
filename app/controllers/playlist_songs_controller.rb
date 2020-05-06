class PlaylistSongsController < ApplicationController

def index 
    playlistsongs = PlaylistSong.all 
    render json: playlistsongs, include: [:song, :playlist]
end 

def show 
    playlistsong = PlaylistSong.find(params[:id])
    render json: playlistsong, include: [:song, :playlist]
end

def create
    playlistsong = PlaylistSong.create(playlist_song_params)
    render json: playlistsong, include: [:song, :playlist]
end 

   

def destroy
    playlistsong = PlaylistSong.find(params[:id])
    playlistsong.destroy
    render json: playlistsong, include: [:song, :playlist]
end 


private  

def playlist_song_params
    params.require(:playlist_song).permit(:song_id, :playlist_id)
end 

end
