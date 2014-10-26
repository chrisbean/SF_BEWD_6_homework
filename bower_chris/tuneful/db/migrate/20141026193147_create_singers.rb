class CreateSingers < ActiveRecord::Migration
  def change
    create_table :singers do |t|
      t.string :name
      t.string :sang
      t.string :info

      t.timestamps
    end
  end
end
