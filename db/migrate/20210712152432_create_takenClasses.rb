class CreateTakenclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :taken_classes do |t|
      t.integer :class_id
      t.integer :user_id

      t.timestamps
    end
  end
end
