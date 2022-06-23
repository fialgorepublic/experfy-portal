class Api::V1::Admin::PortalsController < Api::V1::Admin::BaseController

  def create
    portal = Portal::PortalCreator.call(portal_params)
    debugger
    # portal = Portal.new(portal_params)
    # if portal.save
    #   json_response(
    #     data: {
    #       portal: serialize_data(portal, PortalSerializer)
    #     }
    #   )
    # else
    #   json_response(
    #     success: false,
    #     data: {
    #       errors: portal.errors.full_messages
    #     }
    #   )
    # end 
  end

  def company_info
    @portal = Portal.all
    json_response(
        data: {
          portal: serialize_data(@portal, PortalSerializer)
        }
      )
  end

  private

    def portal_params
      params.permit(:portal_name, :portal_id, :portal_url, :company_name, :default_language, :default_locale)
    end
end
