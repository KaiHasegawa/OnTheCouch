class AddDescriptionToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :image_id, :string
    add_column :items, :tag_list, :string
    add_column :items, :actor_list, :string
    add_column :items, :genre_list, :string

  end
end
