class Room < ApplicationRecord
  validate :name, unique: true
  scope :public_rooms, -> { where(is_private: false) }
end
