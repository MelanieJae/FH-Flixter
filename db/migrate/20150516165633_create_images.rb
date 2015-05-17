class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.text :caption
      	t.integer :user_id
      	t.integer :course_id
      	t.timestamps
    end
  end
end
