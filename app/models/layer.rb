class Layer < ActiveRecord::Base
	has_many :protocols
  attr_accessible :description, :name
	validates :name, :presence => true
end
