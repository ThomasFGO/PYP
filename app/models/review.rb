class Review < ApplicationRecord
  belongs_to :catch, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :content, presence: true
end
