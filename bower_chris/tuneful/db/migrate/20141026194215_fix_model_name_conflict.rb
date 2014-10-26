class FixModelNameConflict < ActiveRecord::Migration
  def change
  	rename_table :singers, :artists
  end
end
