class Establishment < ApplicationRecord
  has_many :studies

  validates :name, presence: true

  def to_s
    name
  end
end
