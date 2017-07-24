class EventsPerformer < ApplicationRecord
  belongs_to :performer
  belongs_to :event
end
