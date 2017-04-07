class Artist < ActiveRecord::Base

  extend Slugify
  include Slugify

  has_many :songs
  has_many :genres, through: :songs
end
