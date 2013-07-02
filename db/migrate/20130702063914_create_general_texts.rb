class CreateGeneralTexts < ActiveRecord::Migration
  def change
    create_table :general_texts do |t|
      t.string :text_name
      t.text :text_value

      t.timestamps
    end
  end
end
