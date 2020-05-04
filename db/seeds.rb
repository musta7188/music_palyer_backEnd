# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'unirest'




for i in [0, 2, 16, 33, 35, 37, 42, 48, 50, 75] 
response = Unirest.get "https://deezerdevs-deezer.p.rapidapi.com/editorial/#{i}/charts",
  headers:{
    "X-RapidAPI-Host" => "deezerdevs-deezer.p.rapidapi.com",
    "X-RapidAPI-Key" => "b6ab925e73mshc85e09479bf16dbp1dcd6ajsn56ffd8f4fbe0"
  }
  
  
  i = 0
  while i < response.body["tracks"]["total"]
        p title = response.body["tracks"]["data"][i]["title"]
        p artist = response.body["tracks"]["data"][i]["artist"]["name"]
        p album = response.body["tracks"]["data"][i]["album"]["title"]
        p artist_img = response.body["tracks"]["data"][i]["artist"]["picture"]
        p album_img = response.body["tracks"]["data"][i]["album"]["cover"]
        p link = response.body["tracks"]["data"][i]["preview"]
        Song.create(title: title, artist: artist, album: album, artist_img: artist_img, album_img: album_img, song_link: link)
        i+=1
  
    end 

end 
  

