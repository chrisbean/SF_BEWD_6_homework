class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.ref :article

      # this line adds an integer column called `post_id`.
      t.references :post, index: true

      t.timestamps
    end
  end
end
