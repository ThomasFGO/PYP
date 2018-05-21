class Technic < ApplicationRecord
  has_many :catches
  validates :name, presence: true
end
