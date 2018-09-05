class AddPasswordToProjeks < ActiveRecord::Migration[5.2]
  def change
  	add_column :projeks, :password, :string
  end
end
