class Ticket < ApplicationRecord
    belongs_to :event
  belongs_to :seller,
    class_name: 'User', 
    foreign_key: 'seller_id'

  belongs_to :buyer,
             optional: true,
             class_name: 'User',
             foreign_key: 'buyer_id'
end
