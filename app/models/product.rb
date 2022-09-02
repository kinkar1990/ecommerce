class Product < ApplicationRecord
    validates :name, :price, :image, :quantity, presence: true
    mount_uploader :image, FileUploader
end
