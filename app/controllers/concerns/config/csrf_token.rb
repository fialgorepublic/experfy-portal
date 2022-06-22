module Config
  module CsrfToken
    extend ActiveSupport::Concern

    included do
      skip_before_action :verify_authenticity_token
    end
  end
end