class Portal::Create < ApplicationInteractor
  include Interactor

  def call
    begin
      ActiveRecord::Base.transaction do
        portal = Portal.new(context.portal_params)

        if portal.save
          context.response = {
            success: true,
            message: "Portal created successfully.",
            data: {
              portal: serialize_data(portal, PortalSerializer)
            }
          }
        else
          context.fail!(response: { success: false, message: "Oops, something went wrong.", data: { errors: portal.errors } })
        end
      end
    rescue
      context.fail!(response: { success: false, message: "Oops, something went wrong." }) if context.success?
    end
  end
end