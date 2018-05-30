class Instance < ApplicationRecord
  belongs_to :study

  validates :code, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
