class AddUsernameToProjeks < ActiveRecord::Migration[5.2]
  def change
  	add_column :projeks, :username, :string
  end
end
