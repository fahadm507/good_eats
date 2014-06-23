class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, presence: true, numericality: true, length: { maximum:1  }
  validates :body, presence: true
end
