class Micropost < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :image,   #presence: true,
                      content_type: { in: %w[image/jpeg image/png],
                                      message: "must be a valid image format" },
                      size:         { less_than: 5.megabytes,
                                      message: "should be less than 5MB" }
                                      
  # 表示用のリサイズ済み画像を返す
  def display_image
<<<<<<< HEAD
    image.variant(resize_to_fill: [200, 200])
=======
    image.variant(resize_to_limit: [300, 300])
>>>>>>> 4fa9f4812233bbaa7433b83bcc3bd979585f26ad
  end
end