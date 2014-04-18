class SearchController < ApplicationController
  def index
    @search = DELIVERY_CLIENT.search params[:q]
  end
end
