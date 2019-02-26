# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Object model for creating a closed list.
    #
    class ClosedListModelCreateObject

      include MsRestAzure

      # @return [Array<WordListObject>] Sublists for the feature.
      attr_accessor :sub_lists

      # @return [String] Name of the closed list feature.
      attr_accessor :name


      #
      # Mapper for ClosedListModelCreateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClosedListModelCreateObject',
          type: {
            name: 'Composite',
            class_name: 'ClosedListModelCreateObject',
            model_properties: {
              sub_lists: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subLists',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WordListObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WordListObject'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
