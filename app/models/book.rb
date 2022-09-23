class Book < ApplicationRecord
  belongs_to :user
  has_many :post_images
  
  has_one_attached :profile_image
  
  validates :title, presence: true
  validates :opinion, presence: true, length: { maximum:200 }
end
