module Response
  module Json
    def json_response(success: true, message: nil, data: {})
      message = success.present? ? "Success" : "Error" if message.nil?

      render json: {
        success: success,
        message: message,
        data: data
      }, status: (success ? 200 : 400)
    end

    def serialize_data(data, serializer, **options)
      if data.respond_to?(:to_ary)
        ActiveModelSerializers::SerializableResource.new(data, each_serializer: serializer, **options)
      else
        ActiveModelSerializers::SerializableResource.new(data, serializer: serializer, **options)
      end
    end
  end
end