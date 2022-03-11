class ProductImage < ApplicationRecord
    belongs_to :product
    mount_uploader :iimage, ImagesUploader
end
