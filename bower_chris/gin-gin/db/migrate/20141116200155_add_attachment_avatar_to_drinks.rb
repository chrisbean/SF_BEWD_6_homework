class AddAttachmentAvatarToDrinks < ActiveRecord::Migration
  def self.up
    change_table :drinks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :drinks, :avatar
  end
end
