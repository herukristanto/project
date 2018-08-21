class CreateProjeks < ActiveRecord::Migration[5.2]
  def change
    create_table :projeks do |t|
      t.string :name
      t.string :staging_url
      t.string :production_url

      t.timestamps
    end
  end
end
