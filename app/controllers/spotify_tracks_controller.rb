class SpotifyTracksController < ApplicationController

  def index
    if params[:artist].present?
      @artist = RSpotify::Artist.search(params[:artist]).first
      @tracks_api = @artist.top_tracks(:US)

      @tracks_api.each do |track|
        SpotifyTrack.create(name: track.name, spotify_id: track.id)
      end
      @spotify_tracks = SpotifyTrack.last(10)
    end
  end

  def show
    RSpotify.authenticate(ENV['app_id'], ENV['app_secret'])
    @track_api = SpotifyTrack.find(params[:id])
    @track = RSpotify::Track.find(@track_api.spotify_id)
    @data ={
      labels: [
        "energy",
        "valence",
        "danceability",
        "instrumentalness",
        "acousticness"
      ],
      datasets: [
        {
          label: "#{@track.name} Dataset",
          backgroundColor: "rgba(28,53,216,0.2)",
          borderColor: "rgba(179,181,198,1)",
          pointBackgroundColor: "rgba(179,181,198,1)",
          pointBorderColor: "#fff",
          pointHoverBackgroundColor: "#fff",
          pointHoverBorderColor: "rgba(179,181,198,1)",
          data: [
            @track.audio_features.energy,
            @track.audio_features.valence,
            @track.audio_features.danceability,
            @track.audio_features.instrumentalness,
            @track.audio_features.acousticness
          ]
        }
      ]
    }
  end
end
