class Restaurant < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, presence: true
  validates :city, presence: true, length: {maximum:30}
  validates :zip_code, presence: true, length: {maximum:5}
end
