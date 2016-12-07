class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if self.artist.nil?
      nil
    else
      self.artist.name
    end
  end

  def artist_name=(name)
    if self.artist.nil?
      artist = Artist.find_or_create_by(name: name)
      self.artist = artist
    else
      self.artist.name = name
    end

  end
end
