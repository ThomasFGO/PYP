class Catch < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :specie
  belongs_to :technic
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :specie, presence: true
  validates :photo, presence: true
end
