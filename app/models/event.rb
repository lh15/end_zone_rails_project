class Event < ApplicationRecord
  belongs_to :venue
  belongs_to :category
  has_many :events_performers
  has_many :performers, through: :events_performers
  def self.search(search)
    self.joins(:performers).joins(:venue).where('title LIKE ? OR performers.name LIKE ? OR venues.name LIKE ?',  "%#{search}%",  "%#{search}%", "%#{search}%").group('events.id')
  end  
end

 