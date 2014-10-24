class ChangeFieldName < ActiveRecord::Migration
  def change
  	rename_column :songs, :song_name, :tune
  	rename_column :songs, :artist_name, :singer
  	rename_column :songs, :record_label, :company
  end
end
