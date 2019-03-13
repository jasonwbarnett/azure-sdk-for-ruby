# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ComputerVision::V2_0
  module Models
    #
    # Json object representing a recognized text line.
    #
    class Line

      include MsRestAzure

      # @return [Array<Integer>] Bounding box of a recognized line.
      attr_accessor :bounding_box

      # @return [String] The text content of the line.
      attr_accessor :text

      # @return [Array<Word>] List of words in the text line.
      attr_accessor :words


      #
      # Mapper for Line class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Line',
          type: {
            name: 'Composite',
            class_name: 'Line',
            model_properties: {
              bounding_box: {
                client_side_validation: true,
                required: false,
                serialized_name: 'boundingBox',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              words: {
                client_side_validation: true,
                required: false,
                serialized_name: 'words',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Word'
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
