class Lesson < ApplicationRecord
  belongs_to :instance

  validates :start_at, presence: true
  validates :end_at, presence: true
end
