# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Exported Model - Utterance that was used to train the model.
    #
    class JSONUtterance

      include MsRestAzure

      # @return [String] The utterance.
      attr_accessor :text

      # @return [String] The matched intent.
      attr_accessor :intent

      # @return [Array<JSONEntity>] The matched entities.
      attr_accessor :entities


      #
      # Mapper for JSONUtterance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JSONUtterance',
          type: {
            name: 'Composite',
            class_name: 'JSONUtterance',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              intent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'intent',
                type: {
                  name: 'String'
                }
              },
              entities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JSONEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JSONEntity'
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
