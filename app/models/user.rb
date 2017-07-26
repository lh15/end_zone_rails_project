class User < ApplicationRecord
  has_secure_password
  validates :first_name, :last_name, :email, :password, :phone_number, :address, presence: true
  validates :first_name, :last_name, length: { in: 2..30 }
  validates :password, length: { in: 5..15 }
  validates :email, uniqueness: true
  validates_format_of :phone_number, with: /\A\d{3}-\d{3}-\d{4}\z/, on: :create
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create
  has_many :purchased_tickets,
           foreign_key: 'buyer_id',
           class_name: 'Ticket'

  has_many :tickets_selling,
           foreign_key: 'seller_id',
           class_name: 'Ticket'

  has_many :sold_tickets, -> { where(buyer_id: !nil) },
           foreign_key: 'seller_id',
           class_name: 'Ticket'
end
