# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Describes the properties for producing a series of JPEG images from the
    # input video.
    #
    class JpgImage < Image

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.JpgImage"
      end

      attr_accessor :odatatype

      # @return [Array<JpgLayer>] A collection of output JPEG image layers to
      # be produced by the encoder.
      attr_accessor :layers


      #
      # Mapper for JpgImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JpgImage',
          type: {
            name: 'Composite',
            class_name: 'JpgImage',
            model_properties: {
              label: {
                client_side_validation: true,
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_frame_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyFrameInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              stretch_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stretchMode',
                type: {
                  name: 'String'
                }
              },
              start: {
                client_side_validation: true,
                required: true,
                serialized_name: 'start',
                type: {
                  name: 'String'
                }
              },
              step: {
                client_side_validation: true,
                required: false,
                serialized_name: 'step',
                type: {
                  name: 'String'
                }
              },
              range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'range',
                type: {
                  name: 'String'
                }
              },
              layers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'layers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JpgLayerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JpgLayer'
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
