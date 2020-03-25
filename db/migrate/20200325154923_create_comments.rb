class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments, options: "ENGINE=BLACKHOLE" do |t|
      t.string :content, null: false
      t.integer :post_id

      t.timestamps
    end
  end
end
