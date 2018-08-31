class ServiceRequestsController < ApplicationController
	  
  def index
  	@service_requests = current_user.service_requests
  end

  def create
   service_request =  current_user.service_requests.create(service_request_params)
   if service_request
   	 redirect_to '/dashboard'
   end
  end


	def get_services
		if params[:city_selection].present?
			@city = City.find(params[:city_selection])
			@addresses = @city.addresses
			@services = @city.services
		elsif params[:service_selection].present?
			service = 	Service.find(params[:service_selection])
			@portfolio = Portfolio.where(service_id: service.id, city_id: params[:city_id])
			@sub_services = service.sub_services
		end
	end

	private
	
	def service_request_params
    params.require(:service_request).permit(:address_id, :user_id,:status_id, :portfolio_id).merge(service_id: params[:sub_service_selection])
  end

end
