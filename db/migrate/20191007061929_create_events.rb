class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_image_id
      t.text :event_description
      t.references :end_user, foreign_key: true
      t.string :content
      t.datetime :event_date
      t.datetime :event_time
      t.string :event_fee

      t.timestamps
    end
  end
end
