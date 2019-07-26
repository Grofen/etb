class EducationsController < ApplicationController
  def index
    @categories = Category.friendly.all
  end

  def show

  end
end