class Request < ActiveRecord::Base
	validates :name, presence:true
	validates :location, presence:true
	validates :contact, presence:true
end
