class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :list
      t.string :profile
      t.string :glass
      t.integer :price

      t.timestamps
    end
  end
end
