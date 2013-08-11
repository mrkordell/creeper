class Visitor < ActiveRecord::Base
	belongs_to :site
	has_many :visits
	has_many :events
end