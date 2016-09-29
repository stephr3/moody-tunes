class SpotifyTrack < ActiveRecord::Base
  validates :name, :spotify_id, :presence => true

# private
#
#   def get_audio_features
#     response = RestClient::Request.new(
#       :method => :get.
#       :url => "https://api.spotify.com/v1/audio-features/{id}"
#     )

end
