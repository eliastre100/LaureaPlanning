class Study < ApplicationRecord
  belongs_to :establishment

  # TODO: Make more precises validations
  validates :name, presence: true
  validates :semester, presence: true
  validates :credits, presence: true
end
