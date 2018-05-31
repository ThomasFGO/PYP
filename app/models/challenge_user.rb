class ChallengeUser < ApplicationRecord
  belongs_to :challenge
  belongs_to :user

  validates :user, presence: true, uniqueness: { scope: :challenge }
end
