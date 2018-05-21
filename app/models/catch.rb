class Catch < ApplicationRecord
  belongs_to :specie
  belongs_to :technic
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :specie, presence: true
end
