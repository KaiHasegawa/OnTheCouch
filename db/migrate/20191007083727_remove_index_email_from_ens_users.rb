class RemoveIndexEmailFromEnsUsers < ActiveRecord::Migration[5.2]
  def change
  	 remove_index :end_users, column: :email, unique: true
 end

 def up
  remove_index :end_users, :email
 end

 def down
  add_index :end_users, :email, unique: true
 end
end
