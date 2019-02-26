# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Sublist of items for a Closed list.
    #
    class SubClosedListResponse < SubClosedList

      include MsRestAzure

      # @return [Integer] The sublist ID
      attr_accessor :id


      #
      # Mapper for SubClosedListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubClosedListResponse',
          type: {
            name: 'Composite',
            class_name: 'SubClosedListResponse',
            model_properties: {
              canonical_form: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canonicalForm',
                type: {
                  name: 'String'
                }
              },
              list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'list',
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
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
