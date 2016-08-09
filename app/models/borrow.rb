class Borrow < ActiveRecord::Base
  belongs_to :book
  belongs_to :member
  belongs_to :fine

    validates :bmemeber, presence: true
    validates :bfine, presence: true
    validates :book_id, presence: true
    validates :member_id, presence: true
    validates :fine_id, presence: true
    validates :bbook, presence:true
  
end
