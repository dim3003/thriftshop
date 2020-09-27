class Item < ApplicationRecord
  scope :most_recent,          -> {all.order(created_at: :desc).limit(4)}
end
