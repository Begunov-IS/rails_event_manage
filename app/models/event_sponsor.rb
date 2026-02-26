class EventSponsor < ApplicationRecord
  belongs_to :event
  belongs_to :sponsor

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :sponsor_id, uniqueness: { scope: :event_id }
end
