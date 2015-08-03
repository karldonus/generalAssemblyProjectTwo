class RentalsController < ApplicationController
  def index
    @rentals = Rental.all.order(:id).reverse
  end

  def show
    @rental = Rental.find(params[:id])
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.create!(rental_params)

    redirect_to rental_path(@rental)
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)

    redirect_to rental_path(@rental)
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy

    redirect_to rentals_path(@inquiries)
  end

  private
  def rental_params
    params.require(:rental).permit(:agent, :property_name, :address, :city, :state, :zipcode, :monthly_rent, :bed_num, :bath_num, :availability_date, :created_at, :client_name, :client_phone, :client_email, :listing_notes, :admin_notes, :rental_id)
  end

end
