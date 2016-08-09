class Auttor < ActiveRecord::Base
	has_many :books
	validates :authorid, presence: true
    validates :authorname, presence: true
end
