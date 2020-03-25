class AddForiegnKeyToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :post
  end
end
