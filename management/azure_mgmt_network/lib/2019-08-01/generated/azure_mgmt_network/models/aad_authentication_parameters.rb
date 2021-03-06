# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_08_01
  module Models
    #
    # AAD Vpn authentication type related parameters.
    #
    class AadAuthenticationParameters

      include MsRestAzure

      # @return [String] AAD Vpn authentication parameter AAD tenant.
      attr_accessor :aad_tenant

      # @return [String] AAD Vpn authentication parameter AAD audience.
      attr_accessor :aad_audience

      # @return [String] AAD Vpn authentication parameter AAD issuer.
      attr_accessor :aad_issuer


      #
      # Mapper for AadAuthenticationParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AadAuthenticationParameters',
          type: {
            name: 'Composite',
            class_name: 'AadAuthenticationParameters',
            model_properties: {
              aad_tenant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadTenant',
                type: {
                  name: 'String'
                }
              },
              aad_audience: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadAudience',
                type: {
                  name: 'String'
                }
              },
              aad_issuer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadIssuer',
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
