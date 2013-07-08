class ImageType < ActiveRecord::Base
  attr_accessible :name

  has_one :photo
  
end
