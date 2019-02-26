# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Regex Entity Extractor.
    #
    class RegexEntityExtractor

      include MsRestAzure

      # @return The ID of the Entity Model.
      attr_accessor :id

      # @return [String] Name of the Entity Model.
      attr_accessor :name

      # @return [Integer] The type ID of the Entity Model.
      attr_accessor :type_id

      # @return [Enum] Possible values include: 'Entity Extractor',
      # 'Hierarchical Entity Extractor', 'Hierarchical Child Entity Extractor',
      # 'Composite Entity Extractor', 'Closed List Entity Extractor', 'Prebuilt
      # Entity Extractor', 'Intent Classifier', 'Pattern.Any Entity Extractor',
      # 'Regex Entity Extractor'
      attr_accessor :readable_type

      # @return [Array<EntityRole>]
      attr_accessor :roles

      # @return [String] The Regex entity pattern.
      attr_accessor :regex_pattern


      #
      # Mapper for RegexEntityExtractor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Regex Entity Extractor',
          type: {
            name: 'Composite',
            class_name: 'RegexEntityExtractor',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'readableType',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityRoleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRole'
                      }
                  }
                }
              },
              regex_pattern: {
                client_side_validation: true,
                required: false,
                serialized_name: 'regexPattern',
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
