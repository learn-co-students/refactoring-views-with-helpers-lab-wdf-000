class Song < ActiveRecord::Base
  belongs_to :artist



  def artist_name=(name)
      name = Artist.find_or_create_by(name: name)
      self.artist = name
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end






end
