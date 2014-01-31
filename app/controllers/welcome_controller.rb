class WelcomeController < ApplicationController
  def index
    @picture= Picture.new
  end
end
