class Api::V1::Admin::BaseController < ApplicationController
  include Config::CsrfToken
  include Response::Json
end
