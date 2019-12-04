class AddDetailsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :prace, :string
  end
end
