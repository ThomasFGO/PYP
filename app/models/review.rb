class Review < ApplicationRecord
  belongs_to :catch
  belongs_to :user
end
