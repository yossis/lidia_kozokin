class Message < ActiveRecord::Base
  attr_accessible :email, :message, :name, :phone
end
