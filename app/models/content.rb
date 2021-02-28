class Content < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :body, presence: true, length: { maximum: 400 }
    validates :content_img, presence: true

    belongs_to :cat
    belongs_to :user

    mount_uploader :content_img, ImageUploader
end
