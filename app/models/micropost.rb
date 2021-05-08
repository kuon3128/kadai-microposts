class Micropost < ApplicationRecord
  validates :content, presence: true, length: { maximum: 255}
  
  belongs_to :user
  has_many :favorites
  has_many :likes, through: :favorites, source: :user
end
