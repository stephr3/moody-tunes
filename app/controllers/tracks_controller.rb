class TracksController < ApplicationController

  def index
    if params[:artist].present?
      @artist = RSpotify::Artist.search(params[:artist]).first
      @tracks = @artist.top_tracks(:US)
    end
  end

  def show
    @track = track
    @audiofeatures = track.audiofeatures
  end

end
