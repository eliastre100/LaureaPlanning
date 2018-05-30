class Study < ApplicationRecord
  belongs_to :establishment
  has_many :instances

  # TODO: Make more precises validations
  validates :name, presence: true
  validates :semester, presence: true
  validates :credits, presence: true
end
