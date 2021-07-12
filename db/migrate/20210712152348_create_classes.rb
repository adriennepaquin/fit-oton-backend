class CreateClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.integer :category_id
      t.integer :instructor_id
      t.integer :length
      t.string :video_url

      t.timestamps
    end
  end
end
