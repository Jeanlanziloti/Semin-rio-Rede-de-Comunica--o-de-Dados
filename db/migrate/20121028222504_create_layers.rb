class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :name
      t.text :description

      t.timestamps
      layers.things.length
	
	
    end
  end
end
