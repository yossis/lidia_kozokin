class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :image_type_id
      t.string :thumb_src
      t.text :image_src
      t.text :description

      t.timestamps
    end
  end
end
