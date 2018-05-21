class Review < ApplicationRecord
  belongs_to :catch
  belongs_to :user
  validates :content, presence: true
end
