# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Filters to list backup items.
    #
    class GetProtectedItemQueryObject

      include MsRestAzure

      # @return [String] Specifies if the additional information should be
      # provided for this item.
      attr_accessor :expand


      #
      # Mapper for GetProtectedItemQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetProtectedItemQueryObject',
          type: {
            name: 'Composite',
            class_name: 'GetProtectedItemQueryObject',
            model_properties: {
              expand: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expand',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
