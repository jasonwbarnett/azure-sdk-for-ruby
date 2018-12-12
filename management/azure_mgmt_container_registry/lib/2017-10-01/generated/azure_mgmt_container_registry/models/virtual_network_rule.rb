# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2017_10_01
  module Models
    #
    # The virtual network rule for a container registry.
    #
    class VirtualNetworkRule

      include MsRestAzure

      # @return [String] Resource ID of a subnet, for example:
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
      attr_accessor :id


      #
      # Mapper for VirtualNetworkRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkRule',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
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