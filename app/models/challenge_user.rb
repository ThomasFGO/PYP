class ChallengeUser < ApplicationRecord
  belongs_to :challenge
  belongs_to :user

  validates :user, uniqueness: { scope: :challenge }
end
