class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :item, foreign_key: true
      t.references :end_user, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
