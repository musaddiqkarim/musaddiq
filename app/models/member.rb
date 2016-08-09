class Member < ActiveRecord::Base
	has_many :borrows 
	validates :memberid, presence: true
    validates :membername, presence: true
end
