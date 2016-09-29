class ChangeSpotifyId < ActiveRecord::Migration[5.0]
  def change
    change_column :spotify_tracks, :spotify_id, :string
  end
end
