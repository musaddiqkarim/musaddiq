class Fine < ActiveRecord::Base
	has_many :borrows 
	validates :idate, presence: true
validates :rdate, presence: true
validates :charges,presence:true
end
