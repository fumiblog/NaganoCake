class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @addresses = current_customer.addresses
    @address = Address.find(params[:id])
  end

  def show
    # binding.pry
    @address = Address.new
    # bindingpara.pry
    @addresses = current_customer.addresses
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(params_address)
    # binding.pry
    @address.customer_id = current_customer.id
    # binding.pry
    @address.save
    redirect_to public_address_path(current_customer.id)
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    # @address.customer_id = current_customer.id
    @address.update(params_address)
    redirect_to public_address_path(@address)
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy 
    redirect_to public_address_path
  # end
  end
  
 
  
  

  private
  def params_address
    params.require(:address).permit(:customer_id, :name, :postal_code, :address)
  end


end
