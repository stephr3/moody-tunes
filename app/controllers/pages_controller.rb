class PagesController < ApplicationController

  def index
    if params[:artist].present?
      @artist = RSpotify::Artist.search(params[:artist]).first
      @tracks = @artist.top_tracks(:US)
    end
  end

end
