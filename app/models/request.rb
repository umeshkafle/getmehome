class Request < ActiveRecord::Base
	validates :name, presence:true
	validates :location, presence:true
	validates :contact, presence:true
	has_many :requests
end
