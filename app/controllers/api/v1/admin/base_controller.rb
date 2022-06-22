class Api::V1::Admin::BaseController < ApplicationController
  include Config::CsrfToken

end
