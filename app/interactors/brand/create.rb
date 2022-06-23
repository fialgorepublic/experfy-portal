class Brand::Create < ApplicationInteractor
  include Interactor

  def call
    begin
      ActiveRecord::Base.transaction do
        portal = context.portal
        brand = portal.brands.new(context.brand_params)

        if brand.save
          context.response = {
            success: true,
            message: "Brand created successfully.",
            data: {
              portal: serialize_data(brand, BrandSerializer)
            }
          }
        else
          context.fail!(response: { success: false, message: "Oops, something went wrong.", data: { errors: brand.errors } })
        end
      end
    rescue
      context.fail!(response: { success: false, message: "Oops, something went wrong." }) if context.success?
    end
  end
end