class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.order(:id).reverse
  end

  def show
    @rental = Rental.find(params[:id])
  end

end
