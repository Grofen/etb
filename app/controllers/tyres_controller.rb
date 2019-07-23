class TyresController < ApplicationController
  before_action :get_tyre, only: [:show]
  def index
    if params[:brand_id].blank?
      @tyres = Tyre.all
    else
      if Rails.env.production?
        @tyres = Tyre.friendly.where('cast(brand_id as text) LIKE ?', "%#{params[:brand_id]}%")
      else
        @tyres = Tyre.friendly.where('brand_id LIKE ?', "%#{params[:brand_id]}%")
      end
    end
    @brands = Brand.all
  end

  def education

  end

  def show

  end

  private
  def get_tyre
    @tyre = Tyre.friendly.find(params[:id])
  end
end