class Item < ApplicationRecord
  scope :most_recent,          -> {all.order(created_at: :desc).limit(3)}
end
