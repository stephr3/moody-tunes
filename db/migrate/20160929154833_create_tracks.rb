class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :spotify_tracks do |t|
      t.column :name, :string
      t.column :spotify_id, :integer
    end
  end
end
