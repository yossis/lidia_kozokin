class MainController < ApplicationController
  def index
  	@texts = GeneralText.hash
  	@message = Message.new
  	@photos = Photo.all
  end
end
