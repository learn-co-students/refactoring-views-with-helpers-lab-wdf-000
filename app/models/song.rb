class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # binding.pry
    if !self.artist.nil?
      self.artist.name
    end
  end

  def artist_name=(name)
    # self.artist.try(name) = name
    # binding.pry
    self.artist = Artist.find_or_create_by(:name => name)

    self.artist.name
  end


#     # if !self.artist.nil?
#     #   self.artist = name
#     #   self.save
#     # end
#     # binding.pry
# #
#   end
end
