# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The list containing blob uris.
    #
    class RiskyIPBlobUris

      include MsRestAzure

      # @return [Array<RiskyIPBlobUri>] The list of blob uris.
      attr_accessor :value


      #
      # Mapper for RiskyIPBlobUris class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RiskyIPBlobUris',
          type: {
            name: 'Composite',
            class_name: 'RiskyIPBlobUris',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RiskyIPBlobUriElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RiskyIPBlobUri'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end