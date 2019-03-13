# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2019_03_01
  module Models
    #
    # An arm role receiver.
    #
    class ArmRoleReceiver

      include MsRestAzure

      # @return [String] The name of the arm role receiver. Names must be
      # unique across all receivers within an action group.
      attr_accessor :name

      # @return [String] The arm role id.
      attr_accessor :role_id

      # @return [Boolean] Indicates whether to use common alert schema.
      attr_accessor :use_common_alert_schema


      #
      # Mapper for ArmRoleReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ArmRoleReceiver',
          type: {
            name: 'Composite',
            class_name: 'ArmRoleReceiver',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              role_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'roleId',
                type: {
                  name: 'String'
                }
              },
              use_common_alert_schema: {
                client_side_validation: true,
                required: true,
                serialized_name: 'useCommonAlertSchema',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
