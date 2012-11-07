class AddPisturesCountToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :protocols_count, :integer, :default => 0
  end
  
  def self.down
    remove_column :albums, :protocols_count
  end
end
