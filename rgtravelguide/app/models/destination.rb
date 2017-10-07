class Destination < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
