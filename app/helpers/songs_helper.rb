module SongsHelper
  def display_artist(song)
    link_to(song.artist_name, artist_path(song.artist)) rescue link_to("Add Artist", edit_song_path(song))
  end
end
