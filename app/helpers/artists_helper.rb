module ArtistsHelper

  def display_artist(song)
    artist = song.artist

    if song.artist != nil
      link_to song.artist_name, artist_path(artist) 
    else

      link_to "Add Artist", edit_song_path(song)
    end
  end

end
