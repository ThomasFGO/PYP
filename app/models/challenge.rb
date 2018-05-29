class Challenge < ApplicationRecord
  has_many :challenge_users
  has_many :users, through: :challenge_users
  validates :name, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
