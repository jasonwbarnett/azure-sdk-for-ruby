# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Predicted/suggested entity.
    #
    class EntitiesSuggestionExample

      include MsRestAzure

      # @return [String] The utterance. E.g.: what's the weather like in
      # seattle?
      attr_accessor :text

      # @return [Array<String>] The utterance tokenized.
      attr_accessor :tokenized_text

      # @return [Array<IntentPrediction>] Predicted/suggested intents.
      attr_accessor :intent_predictions

      # @return [Array<EntityPrediction>] Predicted/suggested entities.
      attr_accessor :entity_predictions


      #
      # Mapper for EntitiesSuggestionExample class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntitiesSuggestionExample',
          type: {
            name: 'Composite',
            class_name: 'EntitiesSuggestionExample',
            model_properties: {
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              tokenized_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tokenizedText',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              intent_predictions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'intentPredictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IntentPredictionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IntentPrediction'
                      }
                  }
                }
              },
              entity_predictions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'entityPredictions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityPredictionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityPrediction'
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
