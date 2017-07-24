class Ticket < ApplicationRecord
  belongs_to :venue
  belongs_to :seller_id
  belongs_to :buyer_id
end
