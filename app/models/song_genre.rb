class SongGenre < ActiveRecord::Base

  extend Slugify
  include Slugify
  
  belongs_to :song
  belongs_to :genre
end
