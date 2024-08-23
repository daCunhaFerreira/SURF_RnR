class PagesController < ApplicationController
  def home
    @surfboards = Surfboard.where.not(photo: nil).sample(3)
  end
end
