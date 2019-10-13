class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :release_date
      t.text :item_description

      t.timestamps
    end
  end
end
