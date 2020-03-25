class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts, options: "ENGINE=BLACKHOLE" do |t|
      t.string :title , null: false, limit: 50, unique: true
      t.text :content , null: true
      t.integer :user_id

      t.timestamps
    end
  end
end
