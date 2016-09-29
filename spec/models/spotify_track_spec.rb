require 'rails_helper'

describe SpotifyTrack do
  it { should validate_presence_of :name}
  it { should validate_presence_of :spotify_id}
end
