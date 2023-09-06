class UserAsset < ApplicationRecord
  validates :title, :amount, presence: true
end
