# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_11_01
  module Models
    #
    # Vpn Profile Response for package generation.
    #
    class VpnProfileResponse

      include MsRestAzure

      # @return [String] URL to the VPN profile.
      attr_accessor :profile_url


      #
      # Mapper for VpnProfileResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnProfileResponse',
          type: {
            name: 'Composite',
            class_name: 'VpnProfileResponse',
            model_properties: {
              profile_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'profileUrl',
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
