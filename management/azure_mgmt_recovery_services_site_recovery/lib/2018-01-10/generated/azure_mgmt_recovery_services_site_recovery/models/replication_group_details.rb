# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Replication group details. This will be used in case of San and Wvr.
    #
    class ReplicationGroupDetails < ConfigurationSettings

      include MsRestAzure


      def initialize
        @instanceType = "ReplicationGroupDetails"
      end

      attr_accessor :instanceType


      #
      # Mapper for ReplicationGroupDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicationGroupDetails',
          type: {
            name: 'Composite',
            class_name: 'ReplicationGroupDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
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