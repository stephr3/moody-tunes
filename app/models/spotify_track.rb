class SpotifyTrack < ActiveRecord::Base
  validates :name, :spotify_id, :presence => true
end
