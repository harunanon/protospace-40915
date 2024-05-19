class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate :image_attached

  private

  def image_attached
    errors.add(:image, "を選択してください") unless image.attached?
  end
end
