class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :neighborhood

      t.timestamps
    end
  end
end
