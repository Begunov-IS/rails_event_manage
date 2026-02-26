class Sponsor < ApplicationRecord
  has_many :event_sponsors, dependent: :delete_all
  has_many :events, through: :event_sponsors

  validates :name, presence: true
end
