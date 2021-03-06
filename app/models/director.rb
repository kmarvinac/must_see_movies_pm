class Director < ApplicationRecord
  mount_uploader :image_url, ImageUrlUploader

  # Direct associations

  has_many   :movies

  # Indirect associations

  # Validations

  validates :name, :uniqueness => { :scope => [:dob] }

  validates :name, :presence => true

end
