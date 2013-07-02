class GeneralText < ActiveRecord::Base
  attr_accessible :text_name, :text_value

  validates :text_name, presence: true , uniqueness: true
  validates :text_value, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }

 def self.hash
  h={}
  self.all.each {|c| h[c.text_name.to_sym]=c.text_value}
  h
 end

end
