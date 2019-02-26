# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisRuntime::V2_0
  module Models
    #
    # LUIS Composite Entity.
    #
    class CompositeEntityModel

      include MsRestAzure

      # @return [String] Type/name of parent entity.
      attr_accessor :parent_type

      # @return [String] Value for composite entity extracted by LUIS.
      attr_accessor :value

      # @return [Array<CompositeChildModel>] Child entities.
      attr_accessor :children


      #
      # Mapper for CompositeEntityModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CompositeEntityModel',
          type: {
            name: 'Composite',
            class_name: 'CompositeEntityModel',
            model_properties: {
              parent_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parentType',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              children: {
                client_side_validation: true,
                required: true,
                serialized_name: 'children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CompositeChildModelElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CompositeChildModel'
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
