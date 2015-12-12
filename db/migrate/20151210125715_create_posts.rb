class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
			t.string :dimension
			t.string :category
			t.string :project
			t.string :title
			t.string :content
			
      t.timestamps null: false
    end
  end
end
