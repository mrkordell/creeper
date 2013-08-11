require 'securerandom'

class Visitor < ActiveRecord::Base
	belongs_to :site
	has_many :visits
	has_many :events

	before_create :generate_uid!

	private

	def generate_uid!
		prefix = site.api_key[0..8] + '-'
		key = nil
		begin
			key = prefix + SecureRandom.hex
		end while Visitor.where(uid: key).count > 0
		self.uid = key
		self.save
	end
end