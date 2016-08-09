class Book < ActiveRecord::Base
	has_many :borrows 
	validates :bookid, presence: true
    validates :title, presence: true
    validates :edition,presence:true
    validates :auther,presence:true
    validates :publisher,presence:true
end
 