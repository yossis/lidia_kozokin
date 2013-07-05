class MainController < ApplicationController
  def index
  	@texts = GeneralText.hash
  	@message = Message.new
  end
end
