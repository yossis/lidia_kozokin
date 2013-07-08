class Photo < ActiveRecord::Base
  attr_accessible :description, :image_src, :image_type_id, :name, :thumb_src

  validates :name , :image_type_id, :thumb_src ,:image_src , presence: true

  belongs_to :image_type

  def css_class
  	self.image_type.name.sub(' ' , '_').downcase
  end
end
