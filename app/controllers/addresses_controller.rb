class AddressesController < ApplicationController
  # frozen_string_literal: true
  before_action :authorized_user?
  before_action :find_address, only: %I[edit update destroy]

  def new
    @address = params[:address].present? ? Address.near(params[:search], 50, order: :distance) : Address.new
  end

  def index
    @addresses = current_user.addresses
  end

  def edit
    @cities = City.details
  end

  def update
    @address.update_attributes(address_params)
    if @address
      flash[:success] = 'Updated address Successfully!'
    else
      flash[:error] = 'Error'
    end
    redirect_to addresses_path
  end

  def create
    @address = params[:address].present? ? current_user.addresses.create(address_params) : current_user.addresses.new(address_params)
    if @address.save
      flash.now[:error] = 'Address created successfully!'
      redirect_to '/dashboard'
    else
      flash.now[:error] = 'Address could not save!'
      @cities = City.details
      render :new
    end
  end

  def get_states_and_cities
    if params[:country_selection].present?
      @states = State.details(params[:country_selection])
    elsif params[:state_selection].present?
      @cities = City.details(params[:state_selection])
    end
  end

  def destroy
    if @address.service_requests?
      flash[:error] = "Address which availed services can't be deleted"
    else
      @address.destroy
      flash[:success] = 'Address deleted successfully!'
    end
    redirect_to addresses_path
  end

  private

  def find_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:flat_number, :street_name, :landmark,
                                    :user_id, :type, :pin_code,
                                    :city_id, :address, :google_address)
  end
end
