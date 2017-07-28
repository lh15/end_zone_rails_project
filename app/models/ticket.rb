class Ticket < ApplicationRecord
  validates :price, :seat_number, :section, presence: true
  validates :seat_number, uniqueness: { scope: [:event, :section] }
  belongs_to :event
  belongs_to :seller,
    class_name: 'User', 
    foreign_key: 'seller_id'

  belongs_to :buyer,
             optional: true,
             class_name: 'User',
             foreign_key: 'buyer_id'
end
