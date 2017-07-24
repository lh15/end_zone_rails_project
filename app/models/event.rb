class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :category
  has_many :events_performers
  has_many :users, through: :events_performers
end
