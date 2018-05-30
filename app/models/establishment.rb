class Establishment < ApplicationRecord
  has_many :studies

  validates :name, presence: true
end
