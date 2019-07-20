class TyresController < ApplicationController
  before_action :get_tyre, only: [:show]
  def index
    if params[:brand_id].blank?
      @tyres = Tyre.all
    else
      @tyres = Tyre.where('brand_id iLIKE ?', "%#{params[:brand_id]}%")
    end
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