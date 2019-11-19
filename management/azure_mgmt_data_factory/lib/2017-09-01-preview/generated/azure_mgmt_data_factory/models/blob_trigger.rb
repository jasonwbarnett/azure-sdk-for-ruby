# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Trigger that runs every time the selected Blob container changes.
    #
    class BlobTrigger < MultiplePipelineTrigger

      include MsRestAzure


      def initialize
        @type = "BlobTrigger"
      end

      attr_accessor :type

      # @return [String] The path of the container/folder that will trigger the
      # pipeline.
      attr_accessor :folder_path

      # @return [Integer] The max number of parallel files to handle when it is
      # triggered.
      attr_accessor :max_concurrency

      # @return [LinkedServiceReference] The Azure Storage linked service
      # reference.
      attr_accessor :linked_service


      #
      # Mapper for BlobTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobTrigger',
          type: {
            name: 'Composite',
            class_name: 'BlobTrigger',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              runtime_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'runtimeState',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              pipelines: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pipelines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TriggerPipelineReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TriggerPipelineReference'
                      }
                  }
                }
              },
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.folderPath',
                type: {
                  name: 'String'
                }
              },
              max_concurrency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.maxConcurrency',
                type: {
                  name: 'Number'
                }
              },
              linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.linkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              }
            }
          }
        }
      end
    end
  end
end