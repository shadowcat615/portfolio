class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
			t.string :dimension
			t.string :category
			t.string :type
			t.string :title
			t.string :content
			t.string :year

      t.timestamps null: false
    end
  end
end
