class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	geocoded_by :address
	after_validation :geocode
	
	validates :name, :address, :presence => :true, uniqueness: true, :length => {
		minimum: 3,
		maximum: 45
	} 
	validates :description, :presence => :true, :length => {
		minimum: 15,
		maximum: 600
	}
end
