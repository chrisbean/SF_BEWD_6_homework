class FixColumNameFormats < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.rename :song_name, :tune
      t.rename :artist_name, :singer
      t.rename :record_label, :company
    end
  end
end
