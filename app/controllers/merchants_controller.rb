class MerchantsController < ApplicationController
  def show
    @merchant = DELIVERY_CLIENT.info(params[:id])
    @menu = DELIVERY_CLIENT.menu(params[:id])
  end
end
