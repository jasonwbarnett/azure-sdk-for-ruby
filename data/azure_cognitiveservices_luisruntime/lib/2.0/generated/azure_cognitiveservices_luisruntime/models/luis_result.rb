# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisRuntime::V2_0
  module Models
    #
    # Prediction, based on the input query, containing intent(s) and entities.
    #
    class LuisResult

      include MsRestAzure

      # @return [String] The input utterance that was analyzed.
      attr_accessor :query

      # @return [String] The corrected utterance (when spell checking was
      # enabled).
      attr_accessor :altered_query

      # @return [IntentModel]
      attr_accessor :top_scoring_intent

      # @return [Array<IntentModel>] All the intents (and their score) that
      # were detected from utterance.
      attr_accessor :intents

      # @return [Array<EntityModel>] The entities extracted from the utterance.
      attr_accessor :entities

      # @return [Array<CompositeEntityModel>] The composite entities extracted
      # from the utterance.
      attr_accessor :composite_entities

      # @return [Sentiment]
      attr_accessor :sentiment_analysis

      # @return [LuisResult]
      attr_accessor :connected_service_result


      #
      # Mapper for LuisResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LuisResult',
          type: {
            name: 'Composite',
            class_name: 'LuisResult',
            model_properties: {
              query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'query',
                type: {
                  name: 'String'
                }
              },
              altered_query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alteredQuery',
                type: {
                  name: 'String'
                }
              },
              top_scoring_intent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'topScoringIntent',
                type: {
                  name: 'Composite',
                  class_name: 'IntentModel'
                }
              },
              intents: {
                client_side_validation: true,
                required: false,
                serialized_name: 'intents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IntentModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IntentModel'
                      }
                  }
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
                      serialized_name: 'EntityModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityModel'
                      }
                  }
                }
              },
              composite_entities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compositeEntities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CompositeEntityModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CompositeEntityModel'
                      }
                  }
                }
              },
              sentiment_analysis: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sentimentAnalysis',
                type: {
                  name: 'Composite',
                  class_name: 'Sentiment'
                }
              },
              connected_service_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectedServiceResult',
                type: {
                  name: 'Composite',
                  class_name: 'LuisResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
