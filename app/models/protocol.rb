class Protocol < ActiveRecord::Base
  belongs_to :layer, :counter_cache => true

  attr_accessible :description, :name, :layer_id
  validates :name, :layer, :presence => true
	validates :name, :uniqueness => true
end
