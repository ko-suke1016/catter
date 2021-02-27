class Topic < ApplicationRecord
    validates :title, presence: true, length: { maximum: 30 }
    validates :body, presence: true, length: { maximum: 200 }

    belongs_to :user

    mount_uploader :image, ImageUploader
end
