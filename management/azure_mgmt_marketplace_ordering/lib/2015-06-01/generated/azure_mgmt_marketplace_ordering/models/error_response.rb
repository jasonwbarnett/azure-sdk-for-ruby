# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MarketplaceOrdering::Mgmt::V2015_06_01
  module Models
    #
    # Error response indicates Microsoft.MarketplaceOrdering service is not
    # able to process the incoming request. The reason is provided in the error
    # message.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [ErrorResponseError] The details of the error.
      attr_accessor :error


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponseError'
                }
              }
            }
          }
        }
      end
    end
  end
end
