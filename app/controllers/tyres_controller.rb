class TyresController < ApplicationController
  before_action :get_tyre, only: [:show]
  def index
    @tyres = Tyre.all
    @brands = Brand.all
  end

  def education

  end

  def show

  end

  private
  def get_tyre
    @tyre = Tyre.find(params[:id])
  end
end