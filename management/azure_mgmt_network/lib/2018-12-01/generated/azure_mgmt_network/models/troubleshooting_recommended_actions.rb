# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # Recommended actions based on discovered issues.
    #
    class TroubleshootingRecommendedActions

      include MsRestAzure

      # @return [String] ID of the recommended action.
      attr_accessor :action_id

      # @return [String] Description of recommended actions.
      attr_accessor :action_text

      # @return [String] The uri linking to a documentation for the recommended
      # troubleshooting actions.
      attr_accessor :action_uri

      # @return [String] The information from the URI for the recommended
      # troubleshooting actions.
      attr_accessor :action_uri_text


      #
      # Mapper for TroubleshootingRecommendedActions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TroubleshootingRecommendedActions',
          type: {
            name: 'Composite',
            class_name: 'TroubleshootingRecommendedActions',
            model_properties: {
              action_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionId',
                type: {
                  name: 'String'
                }
              },
              action_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionText',
                type: {
                  name: 'String'
                }
              },
              action_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionUri',
                type: {
                  name: 'String'
                }
              },
              action_uri_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionUriText',
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
