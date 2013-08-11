require 'securerandom'

class Site < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	has_many :visitors

	before_create :generate_api_key!

	private
	def generate_api_key!
		key = nil
		begin
			key = SecureRandom.hex
		end while Site.where(api_key: key) > 0
		self.api_key = key
		self.save
	end
end