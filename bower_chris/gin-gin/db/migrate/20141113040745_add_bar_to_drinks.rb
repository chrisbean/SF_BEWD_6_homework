class AddBarToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :bar, :string
  end
end
