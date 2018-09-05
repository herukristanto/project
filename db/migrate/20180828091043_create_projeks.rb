class CreateProjeks < ActiveRecord::Migration[5.2]
  	def up
	    create_table :projeks do |t|
	      t.string :name
	      t.references :client, foreign_key: true
	      t.string :staging_url
	      t.string :production_url

	      t.timestamps
	    end
	end
end
