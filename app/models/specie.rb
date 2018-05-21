class Specie < ApplicationRecord
  has_many :catches
  validates :name, presence: true
end
