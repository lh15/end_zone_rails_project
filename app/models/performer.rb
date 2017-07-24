class Performer < ApplicationRecord
  belongs_to :sub_category
  # performers can perform at many events and there can be many performers at an event
  has_many :events_performers
  has_many :events, through: :events_performers
end
