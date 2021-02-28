class Cat < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    validates :sex, presence: true

    belongs_to :user

    mount_uploader :cat_img, ImageUploader
end
