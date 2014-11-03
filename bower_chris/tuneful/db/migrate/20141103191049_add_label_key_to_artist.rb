class AddLabelKeyToArtist < ActiveRecord::Migration
  def change
  	add_reference :songs, :label, index: true
  end
end
