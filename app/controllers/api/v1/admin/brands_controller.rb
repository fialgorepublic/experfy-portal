class Api::V1::Admin::BrandsController < Api::V1::Admin::BaseController
  before_action :get_portal, only: %i[ create ]
  
  def create
    brand = Brand::Create.call(brand_params: brand_params, portal: @portal)
    json_response(brand.response)
  end

  private

    def get_portal
      @portal = Portal.find(params[:portal_id])
    end

    def brand_params
      params.permit(:name, :identifier, :microsite_identifier)
    end

end
