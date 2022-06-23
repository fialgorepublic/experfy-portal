class ApplicationSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attribute :id
  attribute :created_at
  attribute :updated_at
end