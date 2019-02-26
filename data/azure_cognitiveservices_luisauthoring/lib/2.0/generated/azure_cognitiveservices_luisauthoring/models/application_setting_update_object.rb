# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Object model for updating an application's settings.
    #
    class ApplicationSettingUpdateObject

      include MsRestAzure

      # @return [Boolean] Setting your application as public allows other
      # people to use your application's endpoint using their own keys.
      attr_accessor :public


      #
      # Mapper for ApplicationSettingUpdateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationSettingUpdateObject',
          type: {
            name: 'Composite',
            class_name: 'ApplicationSettingUpdateObject',
            model_properties: {
              public: {
                client_side_validation: true,
                required: false,
                serialized_name: 'public',
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
