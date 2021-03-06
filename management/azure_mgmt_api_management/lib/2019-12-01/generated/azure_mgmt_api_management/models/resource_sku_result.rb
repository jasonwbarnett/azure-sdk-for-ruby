# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Describes an available API Management service SKU.
    #
    class ResourceSkuResult

      include MsRestAzure

      # @return [String] The type of resource the SKU applies to.
      attr_accessor :resource_type

      # @return [ResourceSku] Specifies API Management SKU.
      attr_accessor :sku

      # @return [ResourceSkuCapacity] Specifies the number of API Management
      # units.
      attr_accessor :capacity


      #
      # Mapper for ResourceSkuResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceSkuResult',
          type: {
            name: 'Composite',
            class_name: 'ResourceSkuResult',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSku'
                }
              },
              capacity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSkuCapacity'
                }
              }
            }
          }
        }
      end
    end
  end
end
