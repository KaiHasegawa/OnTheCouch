class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.references :end_user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps

      t.index [:end_user_id, :event_id], unique: true
    end
  end
end
