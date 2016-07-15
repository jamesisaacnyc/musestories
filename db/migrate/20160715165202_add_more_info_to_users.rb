class AddMoreInfoToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string, index: { unique: true}
  	add_column :users, :hometown, :string
  	add_column :users, :age, :integer
  end
end
