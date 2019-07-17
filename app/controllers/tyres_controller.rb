class TyresController < ApplicationController
  def index
    @tyres = Tyre.all
    @brands = Brand.all
  end

  def education

  end
end