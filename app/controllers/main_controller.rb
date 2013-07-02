class MainController < ApplicationController
  def index
  	@texts = GeneralText.hash
  end
end
