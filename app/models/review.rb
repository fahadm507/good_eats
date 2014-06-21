class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, presence: true
end
