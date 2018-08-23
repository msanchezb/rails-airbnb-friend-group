class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :avatar do
    cloudinary_transformation gravity: :face, height: 400, width: 400, crop: :fill, effect: "brightness:30"
  end

  version :thumbnail do
    cloudinary_transformation crop: :thumb
  end
end
