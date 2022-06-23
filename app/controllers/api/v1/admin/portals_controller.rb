class Api::V1::Admin::PortalsController < Api::V1::Admin::BaseController

  def create
    portal = Portal::Create.call(portal_params: portal_params)
    json_response(portal.response)
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
