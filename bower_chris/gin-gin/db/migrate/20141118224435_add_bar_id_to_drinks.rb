class AddBarIdToDrinks < ActiveRecord::Migration
  def change
  	add_reference :drinks, :bar, index: true 
  end
end
