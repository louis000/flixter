class Course < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many  :sections, dependent: :destroy
  has_many  :enrollments, dependent: :destroy

  validates :title, presence: true
  validates :image, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
