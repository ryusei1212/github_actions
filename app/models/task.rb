class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :contents, presence: true, length: { maximum: 140 }

  scope :default_order, -> { order(id: :desc) }
end
