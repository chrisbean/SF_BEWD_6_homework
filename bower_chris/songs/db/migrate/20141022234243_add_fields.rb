class AddFields < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
	  	t.string :song
	  	t.string :name
	  	t.string :label

	  	t.timestamps
  	end
  end
end
